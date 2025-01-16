Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30BDF24A7C0
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737003354; cv=none; b=Iw7qkWfkoZkAachzoWo+9fwxPV8mPlCkJGj7SzRySp3E+GoT0LJZnpqcOCIumg7r9+bEUwIUxeJ6csKjVUIoSnjY2ypSwQdhrzHE0lC2r7wxF6JBq5GPQ9rF2iLyRq6XHF08Uv78+cvzuuO99okJjNfijpzQ+/ckrMU6RPEUkCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737003354; c=relaxed/simple;
	bh=wEmGrnHi2EKEyQ20ZXfjOmj83J9Zx/Nz3hFhF/WufsY=;
	h=To:Subject:From:Message-Id:Date; b=AG6U2L85sXdprAxD0XflEBqBSptS0U2YHokIqRHTz5S8nJW9MKXIuU5vw0EHWWVJozPoMG2zCJ9eWSziCF90Aq6VThNSZmAhwO4ye8xcM1OmUq2wJANB1ad075Gm/RMwNdwRqD8f38pS1Z2bO79b/8/hANI/UcPxR0YSFN/2lcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP7BkXkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP7BkXkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E7AC4CED6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737003353;
	bh=wEmGrnHi2EKEyQ20ZXfjOmj83J9Zx/Nz3hFhF/WufsY=;
	h=To:Subject:From:Date:From;
	b=GP7BkXkxCxyOlNRTEVghgVm+D/p9gHZpj5qeOEMQhrKh3KgYSs1Z+YtHvVjtcG4lB
	 AXlfCYDD/3QUY7XC/DeaTfujULbCftwX2AvHAF75F9hB8O9IAag4nrdXJjErcEoSZl
	 yS7XKJcaq7Rpve7XFM3LExdyUVMPX/6oU1VtmVTgsPeurf1/XRc9afVwxffH/+kIt2
	 BQgJt+s0PUxmhFqqrgQNHlXsu+dD1G/W18wg9zMmEpsoVJ+TyPy5ZA7uUvxWbjqqVX
	 U/x2uS0sK8F7c0xXlD3CWlrOjCDScctxSq7ydVmd39hT49YeumPrE173xBRtgNRPe+
	 xMi3wF7fermlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EBBE77188
	for <ddprobe@lists.linux.dev>; Thu, 16 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173700335359.5979.16572554698466068600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de9da15494f135bdd20d261d5837ab040c546f38e9dbf55ec8e86497ddf43645
Date: Thu, 16 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737003353
