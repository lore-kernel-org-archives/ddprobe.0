Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FB441C62
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779985354; cv=none; b=TncoC+/ZeWiIP9pmCHHiTBgFMlN+0pSMsfB6ztOeWyweXaBIGyKQe20EK6vR+OHWs/AWeo3e9wiK5CwAHyhAH3RmT+ZctGNjD4gNJnzvmojUzcDl6RUR+8TzgNsyfVpDTa5FVGaaCN2rw5IMtbuiF7chMvunmX5PXOpGkhWKXrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779985354; c=relaxed/simple;
	bh=UUJk6/3FyeBac6S1N2CXL6GvATpqIEnBfHy1sfrJcQQ=;
	h=To:Subject:From:Message-Id:Date; b=eo6vLeHoGbgaJWFQvPiCq4hulLMyQBHEzCxv1dGdRZ3sp1uigWqPZp/TO2JzRRvSCl6GrsHH5Mgkndd/w4+nBQROx+O+K84IkACsgxPaRN7Nd32t+C6AjOTgJBE0LMVe+cogNkhqZUXAeSbBMqsRq7fyQ2IbNtsu74fjskXpcrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QoFAqmfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QoFAqmfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6C70C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779985353;
	bh=UUJk6/3FyeBac6S1N2CXL6GvATpqIEnBfHy1sfrJcQQ=;
	h=To:Subject:From:Date:From;
	b=QoFAqmfNbGXZddz5LoIVTSIjNGkLOPb1ZA7eNgcV16zH8U2kTWtzteu2BSPJIt1+m
	 iWQKLlOXDE7K2SUEYVMt5OPSnDBFF3dA0gqe3XXmrxVJ+w329Furh5Jofrd+1r9POl
	 TfqZoSzKm7qawAfPnBCAEyG4yRYXowfQvjWc/OHDeoe9xdcUvanUHkjLZ5TsXxenzx
	 3+J5HCdHyA+e9QLbV5v43n6YLVxc8owE5NiToNQudYhQRrz++gn2gw4V/QQhZLWAcy
	 UUU2fYVsYVR0riAOVlTUcSh6/SPc4dl+zRmAx4nk4DLoEtt/rXrhfqS6iZ/9zED/pA
	 +MQX0pDOTt/TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF202CD5BD5
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177998535368.13011.8229890872897594067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0d0e97442fb81648a1f7f253c828bafad8e1cfa41292b76cb496aa2b3256c37
Date: Thu, 28 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779985353
