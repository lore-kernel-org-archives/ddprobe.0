Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0310427B347
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774576494; cv=none; b=EYES7igFQIQ0LVk71jsujMWbXgps1UfruHoUJCs3NJ5vKt1V1YxGqyE00nSGGMvsS8Ik5UktyF81e5rj4uav1dQRiIzCI/OOGCiHCRrycNL5PYxabUV/WuAgNObkm0eW+9L1r2TkdWqWT/AAy0hpKqOaW3Hd/bT+0eO6JyJrS0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774576494; c=relaxed/simple;
	bh=13SRW0u1YwnwZYo/qNCtuhI1y7m/xNxd4ozVD+nn5G4=;
	h=To:Subject:From:Message-Id:Date; b=WQfAJXVrpxW0tBgI4V+PfXqJ25nU2ZB6BavF4ApDn1UZFuNHH/XLSn/01y7wnwPl4aLBruLsO2oZIseTyvlIBMPnDFEZJslz+vA9KKDRmlh8O+N6DJ6pUSxMW/sjZS0G67fGESNBha9pqD+sqiRAvRwgR5hdot3IkwKsyFRlNa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iKTBV5W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iKTBV5W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43B4C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774576493;
	bh=13SRW0u1YwnwZYo/qNCtuhI1y7m/xNxd4ozVD+nn5G4=;
	h=To:Subject:From:Date:From;
	b=iKTBV5W9M2BCznzSPljJl9IWYQI4KSTVe4okI1ZNdWZrniYRLRjVB1hIPKhNAM7n2
	 V5Si7+eRmp1Cosut91KOPqrxqly1BMRjsR7/oPi5knhPZ/zdbbvNKskMMf3o4B/Bu1
	 MejolMoPM/AF3hVbu+Y7aGRriUVZMXpEZrQtgwT/zUWhhoNYuj9qr9WMWL66iLkCOn
	 g5jJfLQgDlOTz0vtnHQqPUCiZDKP0DWfLYXwQwy/Ar7Ou6ZblabSoSYA+eyZWNjGcS
	 QFrHPdaRJ0fsM1mxi+eHckMeUl5Btv4KcPQnK7OvbaHPfBCpA+mpc4z6sYwU+5SX4t
	 I4dUE8pcvjsQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258510AB83F
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 01:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177457649358.32085.1086035733857373316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02720a616745a6bebc188c07da09d7eb72716b08347104a93df902be575d2cd6
Date: Fri, 27 Mar 2026 01:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774576493
