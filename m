Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5A0296BD2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787755834; cv=none; b=P/plF856bCSaYGB1UN9XhXHwiZkJ3tolVNETL0JiJj0di0qsM4OFB8a84IALx/xRD9uQ6/nwXQ8YNUyWFWRVMxH4FyPiUjPiNfv6H2vEqBhuYh5ZSVYtakpWqBMELh7tinv7RrORRHK8d5H7D3Vzs3mS7P/jdyVmtukeLbOW2CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787755834; c=relaxed/simple;
	bh=Ywx4Pj5a/VN0rsSWGr/0qufI4OdnHPycE16IV987JvM=;
	h=To:Subject:From:Message-Id:Date; b=LcqAlqt7VDfYIHQQikGrpLlby0jS75PXtBvqXgXaRtRHVksByed+/hnAawe/cG/Zc1JH0jJsdAEmOOBc+ck2w2MyYQY/rGFpQL+e+lg/RQxPqWgwUXk11VGR9SLY6hcireiiMoZNg7FpIE/z1X1hCPS/Af34+dcVmpnvgQflaY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cJ9oFk0Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cJ9oFk0Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE8A8C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787755833;
	bh=Ywx4Pj5a/VN0rsSWGr/0qufI4OdnHPycE16IV987JvM=;
	h=To:Subject:From:Date:From;
	b=cJ9oFk0Yw3gHMJiZUSqaFfCYrk0HC2M85xqeDceWbQ4YvYqd/PmBxroKDQ8+zLkbO
	 fo4lr2jopxs2Fp/ygERE9rmS6JrxNb2GqJqG1FcIBJly7KrS+6yvnfyHeLAXssLTux
	 gG2BwkzZNbnCzJ+MxZWsFmTAE5vSInQnRRgY6sB4ysZcQLNNhPY51+hc0ziNhd0bKt
	 SdmXTHdMXMGpmSUA06yY+pTVnY7P1yz1Oemc6MD8KknqqQakU/z81NjJHgqj7VtFGQ
	 +PO6Ur4z9ZZuW28akAn4BFQGG4QrlYCnMeg8bZZ3GgIs4ubmrW6l30SmlAyjXJ8oO9
	 QRr2uoyQSSpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7DAC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178775583368.14503.8318092480501353199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76773f97b0fabccfcd5af8f8f434a134b47074f673a37174670790f13323b0ba
Date: Wed, 26 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787755833
