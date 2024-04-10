Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0F613D274
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712747297; cv=none; b=jJI+KLLnpkRweLlLx5g9C2oL6bh8qQggk9l0206cSsKHvg/VjxoX2BfV7vBSf0Q+/raJTJb0mTzOA6d++aR1/ruF/5rj8JFchfjZaaWZkTM7DVl2wr5A/zbor6UBzHwQC9kbU6u4/E0pqWoHm85vWWS8wYLxBpKr0QwJh2xICxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712747297; c=relaxed/simple;
	bh=yQSdRsAvJnbhj5mLw/MTr+w1S3iVmCR/qPujn7GP4LQ=;
	h=To:Subject:From:Message-Id:Date; b=YPpVvPXeE3NNKniXc/OMc0NBKNnPvGHCBuCYsdL4wW53f3ublLKtwaQS8ziMRavZFO5Sppluvo+BWG5HXV04NTYeP92F8KYVIISIp1xd9I6tqCL+hsnZ4OSqicsjYsi5QFKlk4JcD877yC22Jmap9SDuXptPVq/qgAy61uf/cZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vn/ZfuLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vn/ZfuLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E50AC433C7
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712747296;
	bh=yQSdRsAvJnbhj5mLw/MTr+w1S3iVmCR/qPujn7GP4LQ=;
	h=To:Subject:From:Date:From;
	b=Vn/ZfuLAYzBYDGAKVUT30wPpWPMCdRvkuUCiYM2W/DdTEDH/OSoc/ToApDvu26sp+
	 PXM1nCIi9EkRKN2yYXXdYKUH272UWyInAJMTEvBVD9oZugKqmZBulqF2HxRgjr0j19
	 0K3hQh01zfO/RXv/1SO1N0u1PCfbxxOLuSYAlY40E2JsWeOAsk6/vMOP5csOmiK9Yh
	 VQHBtGc7mr2xZdfFxOVwjGZ2XuTcsAoK3mTG70lKt0eFZBHqtEN+q9WBsomw7ymN1L
	 KB/EVSf3vQfS8BFa/uI8auPVO5HLcj6ZiK2QJ38ODxrVlX05HTOQswDKmfyeDCaHZW
	 Qj656f3ufIqmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 683E0CD128A
	for <ddprobe@lists.linux.dev>; Wed, 10 Apr 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171274729642.21599.12292101824914383857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8093903478f103337a6833a03ec02554c51b435b1b355284cc49135b6a3a5ecc
Date: Wed, 10 Apr 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712747296
