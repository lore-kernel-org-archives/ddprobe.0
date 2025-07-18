Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4551D6AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752851994; cv=none; b=AHa5VRyrij40tyr+4ut9yM13Gvr5fOx1CvqcPkV18Zmx0vfVNimZyBXJXWwfAyQPdAXWeT4dMLeYSmFOfz7w4UIVRlAQZzVZoyaIdTLLbSmRU2YWvdc07UEDIVb7J83X4pIUjmbqPcf0/MdKI40B8JyOWyNh9ha0v2doNJyQ0k8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752851994; c=relaxed/simple;
	bh=xf2A/fkL+ieKOdOclm/r5raRJ1nCIQsBz1oqVIv4xQo=;
	h=To:Subject:From:Message-Id:Date; b=J1NBG+jPUvyJfpF2gDtixf9AR5sK4xlIWMKL7bBTLgzbQ1eLpPXhZEU0ZwGFIm3QboSMjsbUnZUtuhGDA0TKGco6Hh8NN2i3WwiwoOethDLIbm+leGRXJDEXO7kkvIxsvhGQhmwjx762MoveTfV3Ka5b4CdL9bswz9WG2AW/zdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGQbCNkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGQbCNkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A050FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752851993;
	bh=xf2A/fkL+ieKOdOclm/r5raRJ1nCIQsBz1oqVIv4xQo=;
	h=To:Subject:From:Date:From;
	b=bGQbCNkhMwvtCWRuTjtf75LxuVEg80D2CYcp6s6hj/rlDMdDprhtuKeJ1HFWFrYm+
	 7gWiUv4+1TKsZdHaxtkaXTKR6ErQTtMKX9R8U2jV7qsAzQ8ZQ6IA+2S2YWHsx/J3Lf
	 lbVSbf8vlUzbnRi1fza0C4IAQ3aWrwyqLL2N/zPX80lD+eOD8AUzzqbfueSR1kly/B
	 YoW+GnKQYZFD40qGzEfMl29gFIoJyibWRzrvm4gabq2fOvNqEAbYYvLhT6lcGYP+Km
	 RoR/hTRe3XMcVG2RKElCtvFN0gLYBjhdotIXd33YRLH3rLjVG5giW0YglGFjCIDLWK
	 ZsnZwJU6Nb4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91721C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175285199358.22918.5224529948594122964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513de7dfdea0ebf443fc30e72d67688fd467a27417a3ff77e5f8601285eb54a7
Date: Fri, 18 Jul 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752851993
