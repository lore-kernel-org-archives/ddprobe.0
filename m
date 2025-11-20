Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B501C5D7D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763659914; cv=none; b=hjOJQ68+WTLVkf1n1TIMw+lcATsIpKKkGGVzi/FxlriuH0f6SAq0A4elaIwzy1f7iMpvYbMd9x19VT0D8mT3D67xf7dlxLleFWcT+mV3uTouJD4Q1o0UuDVGl/m9t/EeQc7XBcPpc7x8xYxSEQpRHjji1jzXC/jSFg/pbijEANM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763659914; c=relaxed/simple;
	bh=bl+Ez/s9+DzsJFk7wQsIp6fiezAhtxpQnOmamv0mr8o=;
	h=To:Subject:From:Message-Id:Date; b=ldl/Zd+456oP5EOOuhU3iRDrevXTgrOTF8afBmz9DMqYg8OGXLAJdreIFHs9GL9ntBdKayxxE+UXJyu7ghhy1mNRsBSJSCiWN0T2IQd8yBON+u+pJz3JxT/BkZj3f0WjDSRxm+IIcAAnNDsuXkEFW1Ju0SuA5cfxIfP/Xxd5crs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eaHTpn2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eaHTpn2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28F0C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763659913;
	bh=bl+Ez/s9+DzsJFk7wQsIp6fiezAhtxpQnOmamv0mr8o=;
	h=To:Subject:From:Date:From;
	b=eaHTpn2BLid/ye8hSkV6xQob6yrCKa7GuZ0LVFSQS9MhJ+UMgb8nCC0RmqmQsPm0d
	 MUTeoK8oPKvTjpw7nNE0znfvgvikC8wYcPV+MlQCJcDzl15tt/OT1QCuTWjSmVRAWh
	 qbJHX8ev421TW3Yaobyk0xX/Ei1cVYy4+N2mAWUzfljllFWgkUdIbepblBhIYySnRg
	 IuCbaxrfNhy70IdF2B2AHFz4w7L81J38+jJuQwcHMj+CiuJr8Wbr2mVIsj5I0ZtN3f
	 LCr/GW5DG5iZmILyxMFLvMHy8swyf6Mjtb++4+xsmzCeDa+ynLruMyG3fv4Fm4h94Z
	 TYYoG1A6eWMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B94CF9C72
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 17:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176365991358.6591.10493581809058707247.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946e20cf3cecb7276cb3df2715710972c6e7337323a5da0c22884930496d6aeb
Date: Thu, 20 Nov 2025 17:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763659913
