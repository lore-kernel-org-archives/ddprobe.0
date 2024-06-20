Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B40C803
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718843363; cv=none; b=NsMyDTB5BlPvMgIx0rjRj5C4FPbZS5nLKqH1bNjVL1Jxu6/OZTM/ukZ1r4BipxRRxXt97pr3Y9qtcxrmiVEMnYxUgOQY/XKOs31GAX2aMy8MXOKrM+OESnWlZ8NYFKreVAFkzvfWfKLyTxXiSLFwiHM2bRD1VeCZmPAAyvbvnj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718843363; c=relaxed/simple;
	bh=Ysn3J9DLLioqIm+ACrs+ijm/qTWBudicRdmFBZsr2FI=;
	h=To:Subject:From:Message-Id:Date; b=Rro8RiDVcSAw1p2DD6IWUYr/v2qbfJVBrXJNg1/mlfzPYJtX1Nd71jyVUyZfOfPoLUAd5txoG+0NcKzGUljRMBd+GeGd9fD8NNGUg5Nbc3qjWb0k4fwIQ23UozN0Ua7Vf0cmrEEESD0nBbW2i4dRo61oVvttvJ1xZp/Y4FQ7dKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPGxcGbw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPGxcGbw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E14BEC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718843362;
	bh=Ysn3J9DLLioqIm+ACrs+ijm/qTWBudicRdmFBZsr2FI=;
	h=To:Subject:From:Date:From;
	b=VPGxcGbwHqzUqDTMCO2m5XHx21gPeF9Ct7wrsLer8AGJC9mKAtIJjBDaMCiC41UbG
	 coHf58XzQHbvA1IHY9t92M2CbvwfoST2tViMvZalHZLCjz4qM2AQkMnyWKJ34jzNV9
	 AxFe4cqP8pX6p6Qgw5kw9bp2KzH/YcI2mstwe6zwNUPXldMInCvmXIB8j+ns7QLiJc
	 dF8n0QZj60+cPwyYX1omWa0yhnTfgVXjPRIeIzxM1voZiuyuXancRKTr8ujak92pgD
	 M9ssvHm/Y1sTI81ddhHAoOBzr0fMWs0qXX2Jib/zOsiINb4qdwww32aTxhrrTbzErq
	 tkzMGCWBd2JHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD377C27C53
	for <ddprobe@lists.linux.dev>; Thu, 20 Jun 2024 00:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171884336279.30653.18169425325394416784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7985006085237c3f5b6326a53f706eb21a200a2821a6147533bdc905a71124
Date: Thu, 20 Jun 2024 00:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718843362
