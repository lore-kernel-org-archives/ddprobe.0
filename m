Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B60183098
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738230954; cv=none; b=Hp24EOXfpcDRcL1Rfrkeqv1xrIFxIlvYjoVZIkqibXG/X4ky21xyUvxid+oe8FQ9jI9xH8+d5H9tjIvmgsNZ0Rqi/mZt3vyzmUYXvR9yaAkon9cBXcf9DvabUA4Jiqo1WzR+Ne1MhtAv46DNChYSsJeRu1qve8DXJYHO6jbSbDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738230954; c=relaxed/simple;
	bh=KlYKf8uiFzn9gh9FHccluir2dYbJbGyRAYjZIwcCbOg=;
	h=To:Subject:From:Message-Id:Date; b=J58oEMkqzV2qx4C3v6iQ7OE27LWQkK2gRZDCXUwmnNj9NcQ9QgqQe5/toJrMk9G7/mhZC27/srKzTgQhSj+J3Th7DcBTKPakCv1ahntIYDSiFjy6gfmB4oxmpfHAflOZzX87jLpfsEiEV4cpi2vJn8SdyATiqxNLVnCVWXj54aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oSYDXTuF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSYDXTuF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2ABCC4CED3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738230953;
	bh=KlYKf8uiFzn9gh9FHccluir2dYbJbGyRAYjZIwcCbOg=;
	h=To:Subject:From:Date:From;
	b=oSYDXTuFg3CDE2GpxAr4RIvicfVr0yn3DDdm/5Vm0ZgRtGAkmLAx3MR08lzckMvRX
	 uBHbFUsbsACOqqsiBOmKEU/a1HJr9S0RnAS7MhEmDfR2r2liNkBxHzq294TQb+/LYR
	 oqBlpcQzYXDjlhFfdEBkAyNMkhb8YiReTQGSELzrLzOffnhWH/JBANgcZYN+wOOKam
	 RCqS+lre+b885S8ysnzvEILkzt+/WOECHJnJ2SJmc6zn6dCIlw/HtgAuWwxivhKFqM
	 HpYiPALOHAM7SbD4JEsjtZcuRREdO+ccomLzlOIh4OkA06YXdbxG0rfJw5//jEJ58n
	 IZptWVsLvd2HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7A7C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173823095363.22976.9670402059201854997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea06c313ccd9fd5775263233c64563554b95cded2a020638b1f855cec447b396
Date: Thu, 30 Jan 2025 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738230953
