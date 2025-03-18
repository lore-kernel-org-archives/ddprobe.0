Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6E319ABAB
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742272794; cv=none; b=gtyyPyHLAVpoE7qt91W5txqh5AwJfTjH+FNlysZNHKrvJ86kcZnSISn/AWGKjlhcWuIJBZynFq2quZrFHDFxEHwwJdGamtwxgB4gRjiow4kpO1gOqvLgvsAW17kMbSf+dmrHd8LbqMOIXDLiaLvp0Mps5S9UbNu25SvfVrC1BDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742272794; c=relaxed/simple;
	bh=6rvXZFoKyFXTMiTDmab4eDIm593qzJgF7WFWnv1jxCM=;
	h=To:Subject:From:Message-Id:Date; b=VVEd7vtyqtIRBAYBqzqQu77HGKyMgYPCesgLSfSZN3jRCBs+Onr7kb/n+L6+QE+NyleoSK0tXmJpAWyreq0lC0YHN9Y+wZ7OeuAyvKTV4MpN+/yIpPLwthgSO2j77NJAibF5FU5gLNX75PsqKbXKxD/zodpICCSvuXRUS0arDPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+KlGeQP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+KlGeQP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BDAC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742272793;
	bh=6rvXZFoKyFXTMiTDmab4eDIm593qzJgF7WFWnv1jxCM=;
	h=To:Subject:From:Date:From;
	b=l+KlGeQPs8Et3RGwY7QBxd6Q6/kb9mBnIjgiqkEYwL9AAybxp5CHxPoppPlfgz3ci
	 Mymzj3OXKPuFYpJ2jGC1Dl+730w9I9WcIMKdH8Dt+w6ZqZLaUb4SEzUpruR89O75Vl
	 nFDKcyYuoqaksF30wleIODdAqW94MDOoY6IjohW2K12ZUT0aQ7DVhY3t9vjZs+qwvF
	 1nJiJILEU9vphq61BZdTd2etYePwZOCZBHT6NomtNG2ljYcWXzp+2tDl/D7u/wFsqi
	 dEYRVDzUf/dqNxMjqRlUk7T7di1BF/eL3ID/RvNGlpOVDtRFefZhWG4chaUreFmnN6
	 tKVwYj9vMnoIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB0EC282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174227279363.21392.11046418045169174739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba3d45b011fd7d8434cede2b888cfa949548fb691c08605b995dce1a49ccb6f
Date: Tue, 18 Mar 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742272793
