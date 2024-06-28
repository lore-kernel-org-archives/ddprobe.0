Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8792E64A
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719557063; cv=none; b=UCvCSHbQM8NuNbfCWMbFt/zYpLf4c0ezXHT3f2s10LHiIaRS1kJU6Zx7U3yPYEHGbZ/FLCY4dG2weiyvP1uG6HP+Q4AOhTxBz8wxi7I4H2YWynSInPQlN5tWXz2PtQPGDZzET4D3tWvZBXWrkTJc04h3UplScGiUKFU6vTY4h4U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719557063; c=relaxed/simple;
	bh=wZOqLtSqrYibEQlMLLVawzWKGJZw4BLRE3WbYiSAakI=;
	h=To:Subject:From:Message-Id:Date; b=jme+ooyLlKnmRrrGfAB/Vy+oRNVLQ/NClh3N7xhqgbgI773g4EGIip39s/2nQTX4LD9WB/j0TB2f7BeBKb/3WSWHJG4vZIJ7NAnLAvK6c+CFnY1lHpw4nTpR/ueybt5Od3Bt5Q0aAnd446QBCFGZsGC7wfsiXjJjQ3EH6J31FU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFiUFa+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFiUFa+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7286C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719557062;
	bh=wZOqLtSqrYibEQlMLLVawzWKGJZw4BLRE3WbYiSAakI=;
	h=To:Subject:From:Date:From;
	b=ZFiUFa+9/00rrvPdSvBI19Zoyzsrg0gTh/ZxqdtkaIHuxyemZ6LdJzP3aPPnBOZYs
	 kpC0BJpvIAcIvkNMdH39lzhZnwaZ7/K3nMEQnr33H9aJXX2lZpAFdLawnFuf2KULD0
	 geHXv9GcNxKWT2OqsRGc2CoZHrXWPw8CiIq02qwGF74OVnPQh0SpTzJLPf9QavFQaZ
	 I3HGhQaKETiRyPatOxb+jDhT4MtVBGN0ecRwaU20+kDV274C8q/UMcBixIBsd76q/0
	 QWjr7LM5gDAPhnKvEsZSXIqHL0Bl2x4/kFBDQKmKngp1IWFH14xNAlzv4fpJViqt24
	 6TpwZgMaXjWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0BE3C2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 06:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955706276.6637.17630120866053997217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66badd48671e2579ac417afc664ee36336de167b4190ec8c2562020d88658fe3
Date: Fri, 28 Jun 2024 06:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719557062
