Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53CBA8BF7
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719798863; cv=none; b=px4hVzzLEw0jMPUzb4cjr2PhGvMPE/n6KoThvL5z3uGPCAzf/jFw8cN2P/zg0qc02N6QC2CRYeBjvV7oIcS+fkNd4Z/uXLM1IywV/vavK2DY1ohcgT4w1k1fLgWo+nWcojRJ8vofM+HTB1yR8uPVsWFrWPh+BfEe7V6NgIoIbGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719798863; c=relaxed/simple;
	bh=HgXudeVCpAy2yWYGz4oXpRiPQtoNYf9VrxEoh7FvSUs=;
	h=To:Subject:From:Message-Id:Date; b=R4VR9o28VJtgtBzoStCt/ThtNOkWEY3PnJKph5DUIU7pm+4U+liCfSMs+ZHzZqbJoTOU37RKwSmjMxcgGeVtjJDcYBdcSqYDup9yuHxgLtGYA/7nF8uC9dWLPiJjRKdnwnPfgf63N7iZ30nCFzS21Hqzrx6AlYgJgkfVye0/f70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N29le4Vn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N29le4Vn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCF0C4AF0A
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719798862;
	bh=HgXudeVCpAy2yWYGz4oXpRiPQtoNYf9VrxEoh7FvSUs=;
	h=To:Subject:From:Date:From;
	b=N29le4VnC6WMwRySVgwJ+7hwTExXR0RliBNdR65POm6YkUB5BE4wDggtlFy27CrAh
	 w/yoCObKQTuMDBaXa8RGE620GkywK+HjlBORztk7ANfH0bonYeHRiZVyLZIdOeeayl
	 36JGEiQuZ3w/WfFZCmYqj7wZsG1dFjRb5091HOLHTB3315zmXwU9vW6oO0ui0OzHqg
	 k1h6vzNIByTzedJtDG4kGF/VxUWRFso6hukfc4YcU10KqvDeF/dpHia7KW5IXMx5lT
	 1o7mV+eA5X8PaUiz2RuvhwkC7USI66ijybrIBNPpC0AaQKZRCY9tQq7HkXxVWPSjmF
	 n61ay5gCALEsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3DFC27C4F
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 01:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171979886275.8982.14450622885358572817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13a1ad320540402368f1f0ecba066db00ee3db6978aff35ae593c805ffba8c78
Date: Mon, 01 Jul 2024 01:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719798862
