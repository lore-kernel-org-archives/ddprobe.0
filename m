Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D3F134414
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717544183; cv=none; b=LN7htWm0YLaH0teyICHCjGWNVzNVMIjbGbqlmK66sxFtcZCGTUpeqj7GGklqpDFEIrm8W73yzrrULhsPG2l5gngRoqRElJ6E/Tpn15IfZRyw+qC0+4UsuJwR4H7jWiqBykRFoIxgGIA3vx0knQUk/+q//bzdKEBCgE2Wd3Riv8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717544183; c=relaxed/simple;
	bh=L+gujTZ6GnciGE6zvlN0LGO8bMQUXYP5rB2oNcujSAU=;
	h=To:Subject:From:Message-Id:Date; b=RIp8BIbCGs3vDgq8gzsSxqqMyOhil4VB3lWCbBaaNueyTb6b1C4fpZ2pX6jMSUMVd3bBQDyYIuajN45+SnVFc4iSCK5lPLoNIZE+gGbHPceL3vJFoenOwaK3s/19kf2XJiVfasRvVid3fbXLvc0ZO3LGiidEt7NXbnYWhycCkXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BlujLNuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BlujLNuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFB4C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717544182;
	bh=L+gujTZ6GnciGE6zvlN0LGO8bMQUXYP5rB2oNcujSAU=;
	h=To:Subject:From:Date:From;
	b=BlujLNuvGFOqWIliZba+2SwgaRGy9U2Dk6WXJPFLGT17J1ousRhn75C5EwoVhhVfE
	 pCAHRnE0gvIkq972ZGFrE5QWdyRWd6Y081GTaLvMoBcvAeizZNonWr3hpp+JfWbPrU
	 w1TfJR0mq7UkPIKs/D3pS9q8ha/UVsjyn8F/s0jar15eRSfPF6rk2BPh0pKTStQ9lT
	 MreH+mGAXBzJQwtEnB/Hgp514/Jpj6yzidP02x2afu062VZa/Hv1WWTxrzWDfqp3Gm
	 0CaJIiKwsmuvDPc28hdn7Mqdoz5ZAXF117SSa6QpL8+nvhKp8CPSu7IIA61mVfgmJ7
	 0NF62K2qvj3+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C43D1C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 23:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171754418276.27182.15784966133097437064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce694d562477a4be829c32b9c95a58665a4c5a49227d4f28d4e7dc383d02fde5
Date: Tue, 04 Jun 2024 23:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717544182
