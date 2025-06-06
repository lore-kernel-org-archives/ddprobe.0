Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E6AA1A38F9
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749225595; cv=none; b=WvuY6p1y9ZEINnE3nnwApJxUeKlFicPiI6o1rTIfiaq6HCw3yvEJIqgkx3GB04QeZzqv/n6JcC0wb2ei6Bfpan2O+ecmyTyKFCZIrFvzRR20th1yZhRXjRvcmL8ssLXtaeitwI/ah7WbBOtRfEAxmCiaGWP1TX2CF/476LdTlJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749225595; c=relaxed/simple;
	bh=CBudqsQX+v807WYD8y85O/8Kt9O6CpuEqAPqOD8O/18=;
	h=To:Subject:From:Message-Id:Date; b=ovZ9N85fBGY+C/ETy1oyVCG94TSCaiK6vdtVDNEc2mv0pTaf5m/Tm5EzwEI1Dv2UTUEH5H50dpiA7Tbfs6Ldt+M56V2T152gg5AqKFZDlzoshyFzsfQjc3WsNLWYcG9iGKhRugszcrQlxtpkjaytkRD2D3CBWnBKhGzuJBrDSJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QZV/kcnl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QZV/kcnl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03ECC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749225593;
	bh=CBudqsQX+v807WYD8y85O/8Kt9O6CpuEqAPqOD8O/18=;
	h=To:Subject:From:Date:From;
	b=QZV/kcnlm6jekGHqSbiM3+NvogQE8T23EbI3hiNC26Vh3/25UFifW8xid9r5PTCjS
	 Z49zFrpJ5yPsWIIxK4S7FJNRRN+Hy6lQrX2Y0ykTPefocjyM3uxH7BkC7xvZjeeHkz
	 vOtE0w5+1TdREkBXfCHZ3tuLbto/P7rxMMlPSdG/i3Ywd3O7o23eFy2vD7Tr6/BhmU
	 XlqkEjD0mjDfZUCVTSFJjEC4eWYOfp0OYDoQcFZUYS7coQE38dbD6RME2CWUJnxZiS
	 Vt7+rBI5bbKIe6iIn2RW0lo+ffaHckGEsZR5t+8vdl8uF1TvqYNgsRDYjZjDFcodd0
	 A0Bm/rlsEVv1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F63AC5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922559357.8982.3566074983464531556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fea244040dbf205de6562b2fc037f2a315abdb8e010602c5a013be67f311b0a1
Date: Fri, 06 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749225593
