Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12AE4326951
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771540494; cv=none; b=CQ52PL9hmH8lHtUfH7+tUEilw7MrgNiptHOVP368TPKJa+SzaK6Hgqr2Xnxwh1A0gzixXpL13H8tT7W3voX0HFUq4U2bZtmJuTTosaI9Uzv2owoCCntjEJNE9+jwGZZiYSfFe0UweR2H8fMqvxlISNfEEcrwhRN9AdBdPaNUx9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771540494; c=relaxed/simple;
	bh=QVftxpBJg9H9Ve1L0g4VPIUMfgPQKOZzeVfxl5e0Xmw=;
	h=To:Subject:From:Message-Id:Date; b=ShKQIskcmtsnWXg4AFSVMxCmH0mdYXlfU/2amOan9Kld2Nh5yQZOuAjkuQu2i51nMXoJ8bSs1U+LkCslSE2KW4n+lnRopY3howuOg8WU4cuz4e1GqFfdaZx2SzHFreLwQiZrhUt1Gy/qN+97VRpNI+rXSk+9q8HxQAxM7Br3tuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6xYAIR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6xYAIR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7CA5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771540493;
	bh=QVftxpBJg9H9Ve1L0g4VPIUMfgPQKOZzeVfxl5e0Xmw=;
	h=To:Subject:From:Date:From;
	b=i6xYAIR6v5JMFI2c7P7Z5WIpI+PfHT8NerhANCMI14jEaXIUpxE5KGGPCq9i1p8lN
	 tIHu6jMmUknjNEhEaLqY1srP1WLL2z9JVR5yLD7UJmaSjOtM/ihpctQGOKlN7sUS1T
	 kSSUMb4om8RU2l/zHFMzHGx9JtCIZq0AmwXwgwdYhFFFtJG6h9++VsuH8AZMjIR+jB
	 tKEw7P/3swK/iKmj5wTrgANpe2O47yqwBepjIZGN7SNecrBGuxYoZMEpdikyAd+6k7
	 L1n0qcqoqPcmRW50i21j0PnHgDyR7Zncpn4sphOTyyYgzcxqvo9jdiyv1PbIFl5iQ+
	 +AzCD1Toic/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F2C531E1
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177154049359.25511.10516935196972553481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5426ba68355c91448084f4a627562bf0bd4488445e7a9afda40e24126f5afc7
Date: Thu, 19 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771540493
