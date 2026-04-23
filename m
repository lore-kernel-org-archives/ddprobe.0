Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DD435CBD7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776917254; cv=none; b=a5FWtcy1D1KsuL2id8QNlEKlOGA+oV2iwitUa6BOBjsMu9gLWbVV4BrfZI4hSSdsOpmgVpmfTpZZvKoa4lbl+eT/qyUZWmgdiPZw2OVCChAjZqlqW1ps9nv3h0Oz3ChJzSI8KxT/yeeqv7nulI45jsj1kUG7YtIaqsYsCoROUjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776917254; c=relaxed/simple;
	bh=hxTGUVgDFlJJHb5jFmGHDTrHJoE3FSvDipDf0kVOmJc=;
	h=To:Subject:From:Message-Id:Date; b=BkEbhY11q0eOZcDEzcgGJohBS+NlYvTY048atMyAW+h+3ENei3BNzM9oH3z1nWm0wLveeF/SP1mvQaX61R+Ms/r1co6vDUzMCwFQEbdNJZ5OkpxBhdC2yxgJTwjegHzqDsKgyi0gQ8E2HXZAvlsVJ/NFBGSUxASw1KQhxUB6VDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=juF4b1S/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="juF4b1S/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C03BFC2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776917253;
	bh=hxTGUVgDFlJJHb5jFmGHDTrHJoE3FSvDipDf0kVOmJc=;
	h=To:Subject:From:Date:From;
	b=juF4b1S/5UU+RXF3nWGPns3tn+reuEJHgms4JWcfN0vOKZgBThyAltWeHa6af0gtN
	 ZgwTOjGBv4BsjkVy6Yb6azbjoIg0y8wBNdV0sN52wdSvtVzQIbDhkTutEDSqPXjMmx
	 XtMKcSgl6NNDviYCfzAh4FnakXfD87r4qeQrQip0+Gd3Xzi9CdPpk91T7slvydTb4w
	 2tAqKhxYHK4S2PzpgJqG8MP0Zb4UnmlE2ja06WvnCPGNR4e8eUvti+28h8pTJZyN84
	 AsZqED2/MRwJ5n6oHHcPy/lR21osGUZQRE2+PMdwWkSHCyebift8SNMl08fYW8JXB4
	 XoYciOajvMYpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2E2FAD3F7
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 04:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177691725368.4290.15241253281707443477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f0f2d5ddd4ed6297294a3d9a7d10a0c12ba842e95e7385c7a16c69f3256d5de
Date: Thu, 23 Apr 2026 04:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776917253
