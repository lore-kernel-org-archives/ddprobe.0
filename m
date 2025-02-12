Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF2D1E500C
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739355655; cv=none; b=EA+cKRAW4AlEgnlBOr/6Lnnl6NrYp/7+H5IZq43MvVaOpB5g4fYvzI3DCL3oqvepvtQIZaLBMv4RcgT9jlaHK2GhDfWMecNWeja7tDuzWcaIouYJtNvIQUEa55yvOg5tnd4g32qkBv1RDbCNg9Y+jY7N6WPDJ3cI8M2mVQKjlEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739355655; c=relaxed/simple;
	bh=B5ZKYmf95GT8HdLmP4idhSdq9Tjgl4iX+KExl04o0TY=;
	h=To:Subject:From:Message-Id:Date; b=VKApB7exMglXRw/BDmF3rRxCjcSknBEKVRxRvKyDJIYcDpbbWGjOlSRftPB/TLtqFrn12vchQU8rjWwr0glY426eUDmhk2jSku5zsCjNGAXWqU0i+HT69h97Iz0s1I56FSITbP/yaW5PdUDjPMsNO8Df32eUcuDTyW91t95dizc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hGgv6UI0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hGgv6UI0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 25CBBC4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739355655;
	bh=B5ZKYmf95GT8HdLmP4idhSdq9Tjgl4iX+KExl04o0TY=;
	h=To:Subject:From:Date:From;
	b=hGgv6UI0h4e2DRTkY+O5BYDsl5FkkUviatDYL6eokX4eU0abbFkBufQ5CPeNe6Caj
	 jISMrlFSzIRV46gE7sVNWl3/ycpD/j0YuatunpIqZsJS4IKY66sfeImJPFdzNqgdnR
	 NxspHbwZaUM1N9OTbO5qjeewatxIg9erflBX/VWV2pBdIIm5gCxrGrOEX+CFy9Y4yM
	 QvrpVV3DMc5qdHgWasmUeWf0fTs8I+nUCU6bG1vkVcXx6Qjq89qT3x2Xs9MV8KeOep
	 XqUVaU3wM76UuJ40FQOlR7yo4wDP9MPBw8cybbk/5aDzYH+IPLb7LRkhlICKbXibD7
	 E7euCaGpSNiEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63DE7C021A4
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935565432.14864.1155766809298905850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56d54e03a4b78d210e9965774a239bed212f7e97a18ff9e92fe30cb88792658
Date: Wed, 12 Feb 2025 10:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739355654
