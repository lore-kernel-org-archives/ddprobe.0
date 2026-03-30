Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B6737BE64
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774868694; cv=none; b=dHgF2BPNMjiaDs69EkIhSuzv8i5moorWi3hU+Hr5syyCnxEqd65o88Ni1uuFYj5z7J+QyyqsBY4HC6MmcOPa8Eux6/7/62MM8ISR+fQXporw7/ISdtWUNy/d04sMSzw3FGMs7YLTnft/AenWqmu6ixzEnFfwCUUw1k/FwN0IVFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774868694; c=relaxed/simple;
	bh=1ebaWs7OLsKexRm9mWVuCrqJug9lvBlcz2i9l+cIebg=;
	h=To:Subject:From:Message-Id:Date; b=EI6Z5CWIDy0mDrmn+IFjsB+fHdmij18r+OYxcvnkj4H1Uj0lXiYG9Dl1BtcX4jWvibZ3DzAQrgM8w0tSfG9OHSq8lgNAM/qcDXKeRgniQiiJz1kvhze0sqHMfA4ujORrTb+DLbANqRGOWIhO1F0duwOwbr0vkq8RlzWZYZzOiQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9lukEqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9lukEqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15F7C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774868693;
	bh=1ebaWs7OLsKexRm9mWVuCrqJug9lvBlcz2i9l+cIebg=;
	h=To:Subject:From:Date:From;
	b=F9lukEqe9rY2cXTyZoUw9Hux1rV/AjWVJJYvxusuJyAIG92cLWb9eIQy0qKkVRsDc
	 Ng8w27IrvblJYe1/+St6U3gE81a65n+ulEOXJS9BRZfZk9tmQ8Sn1dpjVvb8Dt46RW
	 /TI5ZkaAqKBiMSf1PlFGLeXeX8hxqGzeS3BU8OfXEsyOGMEbrc30fUlD+uOhniqPIe
	 dyQ3Wfdh/qpvgV+1jEZMPfjqxsMfLRoZAYBwhpWpc8HlvGe1nStIbD9tVxYAafWsfx
	 JY7a49aOBgG5tUFoGyNS4dPDDLWIuKt2+K/VD1BgCVMFLtaz/Up9d9f7GxUvNyuD2w
	 o1Mqw83kNvK4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904AA10D149C
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177486869358.11677.13075081932057337634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0690f40b472ee49cd310515f6a99bcf053c9abffef0f41e8a491ff1fd692231
Date: Mon, 30 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774868693
