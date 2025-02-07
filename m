Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C9771F4169
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738936554; cv=none; b=g+DyOruX1cvhFwwp4RyL/cABAqJoRB5JLnu/mHODpWuW0riWUK88AXuxPbUxy7hGnGy+HWgKfGBS5G0RPzJGmMWREYd79P3sZ8a5rtbkFAB8KVIzT8huOEZCIwf0fJ+M+JYjzMISZzimAyuLnRxylCfh1Ar+VExSWOYdZXBaq5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738936554; c=relaxed/simple;
	bh=6dQfPLQWcmTDpczvaD/INcrYKRv9vA6l7dCjr1mJtgk=;
	h=To:Subject:From:Message-Id:Date; b=NQ1SqOgPiwtjc5ZIcRThJIvz9RJGgMY5zX+lbkyRhbEdqa2Q/s4WXVRuj4BYnfO+LBUxYTmESXMZZJGcx8R1AhSyrSYQ1TPAY8NGocP/LYzNXrw37UyAp8/aZGOlaA46lE716LmEOQNxpaPkL46twR+OmatXPaaPtXTNJqxqzVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTDNNeyT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTDNNeyT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A05C4CED1
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738936553;
	bh=6dQfPLQWcmTDpczvaD/INcrYKRv9vA6l7dCjr1mJtgk=;
	h=To:Subject:From:Date:From;
	b=hTDNNeyTu/5naJlco86m9/DUD4qmQ4Ce+L3x75Jc0MrmrUti3iFT/SSVGWzgD9gvW
	 du9PUMTBLWEi/DVAJTL2uzeKcMKk0479gs00G/VZ/O5530gCJQiBk/NkvM4VCqa0Jw
	 cOWJOPiZuO8au+dRo/xsqca3BdgDvmly9uOPEsAyd4XGAxGQ0Vg8mvyuatWqZff+CK
	 Ib1B5eD7Q11ioLytji/UvNHdLWTISCBI59ek1fsgPZ3DWJpX90+afyT4xFr3B6yGeG
	 UBLXc3B6UhOJcLP8APlCpqp4Rw4ahUv6THcwYa3dOw9Ueg5j7g5QC22Sies/k4dk4U
	 mKLf23oqqoG7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A05BC02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173893655361.13720.14443437709566263125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94587f516404d36d95468ba467a606a6fe44d5244d404059d300ee9c9170d826
Date: Fri, 07 Feb 2025 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738936553
