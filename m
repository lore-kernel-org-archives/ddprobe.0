Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE4A8632B
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771760694; cv=none; b=DgbgOPPKw6om2H8csYOd0JX1a9xvvGA8s1pNtSsDqGse3V0TIfI1znzGvtGO3T0+18b++61bJ3+svKIALhzmtfNWJlrS93RXHNyti+aaFxTt08pnnt20xxD2bGl2xq2jPYkbjuOmW6IVSAjGHuguvcp1HZAja9QvHl/onM8QwGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771760694; c=relaxed/simple;
	bh=c7KeEPBSPjEhSUNIHmNXYGoGQ+RgD+5qvq6cnM9s2uQ=;
	h=To:Subject:From:Message-Id:Date; b=b0RDger5yEerkJbKC8gPHU4oZIUIxuBvTCimtTaN71Nqt3pL6Z82RFfIn+IiTI9wnm2kuzWoWWhGhQ0yISrVgdzPbb2QdUWgexd4niObG4imSTu5xNrRaasQoFkxBQlqN6rLyTp4gjtVvf6/ZNEmtqqbLOppxwAB1tPPNGQmPqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxnQfkTr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxnQfkTr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2DFC116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771760693;
	bh=c7KeEPBSPjEhSUNIHmNXYGoGQ+RgD+5qvq6cnM9s2uQ=;
	h=To:Subject:From:Date:From;
	b=sxnQfkTr+tJvRsWg+2F81RdqlpMhOdzk7O/22+YcDrM7RaQw9uMMlDYe813jSc2K2
	 S+AUELqVS0+DOwejiKnW6eKO3N9b+HfQT+Msc+BUGSfIdviUSaJBBcJns7FoH7YbRi
	 RC7n960gXc/YEt4I5g0cBQEW8fCHxPhw+g25GVSObDBRtmpxIXf3YiHdmYOCBL+VtJ
	 UjnU16JOAhxEk2QYX6AXa3kmyoSs20nQhGiYXGA1oeUT/b/dIHl1VZ96sDmbvr1ti9
	 YuUZRKMS/D5+7oF3UXo3KOAfUiRL02Wlid5bgCUrxPL/KWkg+US/+pH86eLJe2v07f
	 NgXfj0PnKvDBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BC5C5DF74
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177176069358.9298.7861729657538342548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45bb70205ddc04cb94bdad309ad012b3c940ef600e2dd00689915c4be4efbdee
Date: Sun, 22 Feb 2026 11:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771760693
