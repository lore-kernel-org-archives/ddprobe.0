Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E3992882A7
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748441394; cv=none; b=XC8nJQUGL6+HlyWg9B4nZXE09BqcbXF28ZE/SSbKr/Hcv/SUF8d8f1Eh+uE+L4dVrhCpEOUD+6psm5As55J107QkqyrqPX9jaw76ToFiNV+LnC1CbPH/QvoN1hdgtymvH5SudEG27pZD1PnEByLDAyWrCfFXRZDjkBIMmG0nZ1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748441394; c=relaxed/simple;
	bh=5yB1l+MGy9T2lbhaXhARt9HuiL47IFDIrujoWLT6sLM=;
	h=To:Subject:From:Message-Id:Date; b=HJNO4UojM64kHUBCxdDSMzchWCCGWYFIxEHGMs7rfs3B58NHVpzc7kCRYIakE8H3/r/0thv61A9mfor52Ad3wBK2wt0ghO6GHzBGcneJVgAorpskJnpuDaaJsy/vBHESBDmU30nWZ30NZdinZrkmG3g8TuwFPgAzr5Pv7TI0wOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXZ6jsZq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXZ6jsZq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E19EC4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748441393;
	bh=5yB1l+MGy9T2lbhaXhARt9HuiL47IFDIrujoWLT6sLM=;
	h=To:Subject:From:Date:From;
	b=JXZ6jsZqqCMSLSiOjFW3QXDk/69FuWFELq3hLKgx7wLzLsJlN+iXMPJLpfP28ncc6
	 1lRMKAUeywp4s18sCTKXlbU+bvFPnEIW/Beo2oHSRbh02icNUydiDpVrZLjfRm4W/h
	 kq8CihjAGGrJNDOtXXe5eWdyP0tJ5+uz8jgPMUJeWj0x0hyKZM5HBHfiGHVFW1f7Pc
	 ++rPDEPMDh/PEvvPO5/HwolsGcLkez1Fon7Z2gjEDzEKtPn9b2XPopwan8+nH4XVFO
	 ci+0S19DC36sTqWNy2DGqYE+aeD+7opwndzg5j7OfWLi2o3ZfTI9yph13qcTetHcLs
	 vw7NnuU6iEGiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E556C5AD49
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174844139357.4747.13494303784434647490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75557920bed18be97ee0f4568cdf7750659625945f2720e69c7e9c34a2840cb
Date: Wed, 28 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748441393
