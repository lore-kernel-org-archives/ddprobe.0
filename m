Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2922E2FFF9D
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774737894; cv=none; b=Q3uKgt7xm/Xn59teqRROBIdVCCKyTmRk5/WvL7AkxX24ci8bRJcIibKN86NoIUoWnv3bLRi1uItizcQcDEMGOzaQFgvbPCob0yoparVW/zqi4whxwZ8OO7OjptAwrXWLd+widU0kALMkojDq7SmM9QpVZpu6SfewO2YglJnl/CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774737894; c=relaxed/simple;
	bh=0zmY9x4DiqrG7/QpAw69o9mztC8VmvViYB1no2FYGFc=;
	h=To:Subject:From:Message-Id:Date; b=PTUR/eeWx6lPmdJAjahyhiii/KVF7NUwunmXPBjQ2frHnFnWTLG5J28XXpQhfCR3+SZqlLLMcY2tzneJ+oiJNCMPZtV4B701g3MC7T7EldCrpdw/tsUX+gposFtGpmBM95b55AMxCrUDjpQT5zUZ1b8e05te/cHeLs5Svj3Iy/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TBJSwhVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TBJSwhVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ECBC2BC9E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774737893;
	bh=0zmY9x4DiqrG7/QpAw69o9mztC8VmvViYB1no2FYGFc=;
	h=To:Subject:From:Date:From;
	b=TBJSwhViYGAX+ev0nO7zCcMGnaOITcX05P5rVy3Rwa5YtfIVQ13rSAIXFo9kp0pnO
	 0+jEBdf6m9pRYZ7KTANqyPNZZNfI8NVxFCpYGG7PZxL6kAhrHEb6MPRUvoGnbl2K9J
	 jqmw/Z8WYApA6xYU4H+GR4hyofSqvppLo12O5/Q6cu1SIRi/9EUBXHQzoZtLospKHr
	 7I2x//JOB9vhMa3A+Mxp0vO4XPi5DWNGtsFN9zh3mUlou3H4/9+VKgW3sUXwPiNVe0
	 nH+PtmcJ5BmLgK8dfxfbhZcLrFbaS7u3UdJqPePV0p3Q8XHXKku+TlFQEoH1uM8tbc
	 5wYuN/QNdZltQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937E110D1485
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 22:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177473789358.4697.2428098274006827653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fb7a77e779b3e2b92b1f4a502b4d5efccbc502799188d047d66ca7acdf603ca
Date: Sat, 28 Mar 2026 22:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774737893
