Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AA8412BF8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784053714; cv=none; b=Ftc5PSsjbcb9myUqUOO7+huLgIEa5B0aEDcfxdjAshNBwj1TXZYhfJlfz2T3HmziwEPCxC6YJCLtPy/JCMqZKR1sagyYcpwuDcHd3wSzv92zAkYBkGsV71YhCRAbCeyWNXJI4J8/4paIQB0cKWHlZPSWEkkRb+7m7/6xkR43uZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784053714; c=relaxed/simple;
	bh=2S7R6cEUWGdWxgphhX52hz1Evo4ngvmd88/9ffTqM1I=;
	h=To:Subject:From:Message-Id:Date; b=J/mEf4REpxLzOFs3Nb6IyxdXUfbON3yhIEJqGfORJc7N1Hd61zBwi6qb7Qp2ehXibZzR5fLRwe58ywkVlRGSsXjYpR5Yn1ez9g4gGYyWMNE6/HCa40/8pAKSGSzic5QW8bvIipATtyjw/rLfZAXCDCdsYlq1wr7VjehMM0NJEbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNtoP7bS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNtoP7bS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B69C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784053713;
	bh=2S7R6cEUWGdWxgphhX52hz1Evo4ngvmd88/9ffTqM1I=;
	h=To:Subject:From:Date:From;
	b=cNtoP7bSUH89B0tpmwtp4xDlXOqM3GnmkVygaZfeWMSg/zC1Xig9n5AwoK21P1doI
	 e8LxFBoTKEQZFCAhZ7xZ0mQ/A3OvM5wGDuAA/JI9sda80Upp3BPLlcQl2a8+dWBliC
	 9ub1X3o2OVPy3xNvig4bzTRkUOlAJq08SWtr9ExPgfhHBKTQ6PrabQ5V+cX61VqJvp
	 fQc65SWQD2qJQh85CplNEeoQon7mfq7fOvv6gEopOZZYkXFeqbdMAyDirN7bybiyeF
	 4c0j99qDPFHnQr0/LwRfkpIEUzQtPQoMbWDxlAaf9xeKmjkVvo08MAwg2pvAVJgRxp
	 7GM03mztHn1gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0723C44507
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 18:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178405371368.6382.6811361540198142349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df6f2ca41f4bdb7c52f76c58f96516a08aba7ffb294dfdba085b75b75e7107fc
Date: Tue, 14 Jul 2026 18:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784053713
