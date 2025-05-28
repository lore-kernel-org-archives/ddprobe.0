Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A281862
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748391594; cv=none; b=TALAPje5rvCA1efXO30tEKF2mgYGuoLAxgM/aBgB81gYK8m8bL92Gc2tUSVe1n+7Y284oEvFhCmeuqhAvnD8ka+1QC+OCgq1vpWEubvG03XRMlYot8G1OKLGVh24DLrwXpiwzp8nBl2RuI5K/YmBt3CmVk+utmsiHllOHt7B0HU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748391594; c=relaxed/simple;
	bh=NU7bNcBqIwxLuX/j63/y29MHRXlLfrRDLy2h1ck+zj8=;
	h=To:Subject:From:Message-Id:Date; b=X0O5weEIWfH3mAqspCND0AoK5qcGlRG5jcjPPkZZTd+kxLISyAZHW1GVDWu46VakoNcHrXTJVH5kBBXQGBuaC3Gsjir0PqcY9PDGyASm7gOI5+5J++uP2AraShqiy/QRh0r9vurI8MvbRDk5M9gGwq8HFunOvRbi5vSll6t30Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QHqxc3k9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QHqxc3k9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C982C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748391593;
	bh=NU7bNcBqIwxLuX/j63/y29MHRXlLfrRDLy2h1ck+zj8=;
	h=To:Subject:From:Date:From;
	b=QHqxc3k9NCQHZ/IfLlQovECc6HlThqWL9lQFS5OHLKKgnIef6HgVWCq9gnIhAtMH7
	 VbOGT8oda6qK/KqPSQBpr4QA9iGqsg/i0vfG1zrlJ2HgOiAZWxT2awTA4NneafxySz
	 RigOFcqWuz+oScknfRMsHYVn+9CiHicj3ePamMyxda7n3kzaWrhbY3GhxBdHvZ+pT6
	 nds0T4QguNaZlHy2OSvpjmtJ3g7al5Zl7IofnNfaVF7uRNMJkcDOecIGVfRSZ0/OPE
	 u7f4K5v3twQ5XHmauh4kyeq+NZxk3bEKxT+Bfvd4etpukmIm8p8g6cxard795Vf07Q
	 Z7283m2H0wGkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE9C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174839159357.12958.12113628425721695057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 445d2ada8c93fb3ea45e502c5684999f3155b7e72f8663e328cf5f6dd789e26d
Date: Wed, 28 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748391593
