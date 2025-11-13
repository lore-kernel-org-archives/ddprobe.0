Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21110330D32
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763024394; cv=none; b=RoDJdFD99cGkRQOwLoXy3+VMzCOX+mD/GtchRo1OEZdnnZeoNRAv/ekTbHoZGYDAmXeX3t3OAM4zNYXXThC7vOgCf4d/N8LJ0vpgccm4ZUf8hz7VeDhRXqUpmeuqYG3wKgb2Oo65QSEgdG6Af05wTu/xkwet4yO1BMoMDxUJ5xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763024394; c=relaxed/simple;
	bh=0mJiL3Huu7I21X3tFXAXkvnv8q/P0+X5Dqo78C3x4Tg=;
	h=To:Subject:From:Message-Id:Date; b=aVG/lhHlxZF8Bulw19BXNNJzmJvI+u6eq/DgjNmO6Jl08lOt5rJxtAU6lKoEM64JpEmg1mRe472AtDEry/GMeMFPdCv9Ito0TfsAu2Zv7gkpNnt5dpT8MzAVopA+AMW28D7xtnRmRwUFBS+DpdrYb8sRUp4+mKtZ8h8SUcMeBTA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/977lOg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/977lOg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A053FC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763024393;
	bh=0mJiL3Huu7I21X3tFXAXkvnv8q/P0+X5Dqo78C3x4Tg=;
	h=To:Subject:From:Date:From;
	b=A/977lOgvu1nOfG0Ywf6gijz+wLMd/yQOKVrptdKbbCaQtLxH9EtgC6ALxHm6dk/G
	 yfk2Mxy1R3YF6oL4egBt6lBKYlSPG6o9gEM+DQeWfZZaE3O2+1XtGwBHH/GmiKgKNy
	 D8qWANE+EeLx1bQUVPBaGuFOOAl7SbXGAmhB9y5dxGeks5xqrPfbTXhgydx4ycmGoR
	 QYLgXJUDAzu2wZ/7I/StBrFhTyU53RMDJTOYQN+cVIJKGEswvZ5p/gApcfLuBWOwsw
	 DQy/EzXlog+DanPq81sJNuAmSAzdncraFDXAaoMSaXV9cvZBZ56Jx+d9qK6yR8L21k
	 RLVnfZ7Nx/9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914F7CD5BA3
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176302439358.11742.10593462799877890315.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71edd3582d9cd004520d6a078ddcbe7f37767a22faeaafe9dabefd376ee050a
Date: Thu, 13 Nov 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763024393
