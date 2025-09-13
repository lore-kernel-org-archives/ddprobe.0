Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358E72367A8
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757798394; cv=none; b=Qn26MlTfM2tDHkmj6WVi6LI4dHM3JRl0bBC16c2LY7021btNzNH2i9NqeldCXk2SkTAGmeOHgHZgcLxlfyN2j00mYs9cL0Kw2vA/hdzcn0oVEY4tTwHEpd4ViVPpyO2G9hvPJxM9Da4U2IoZ66zJxh1pSYyYV4WB+MeHX3rIeVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757798394; c=relaxed/simple;
	bh=fryc+rfkwEIHEJ4anq6UugdNKkWbTMB9JsIdOo7AX6c=;
	h=To:Subject:From:Message-Id:Date; b=YWp+4JwygK/6xIqtd9s8VgBZ/qmYnNGgYMLFDwb0xSInnQflHu0loP+Fo/bXrsUjps7o5DHvPZSlYVSLSExQCIJ4AyWl34X7REFmNzGdrwnjKQvunhrMjpJo0LAIyNuYsZIlMx5ZCiOYV2wXRiXBcGPgt1xiBeXt4X/+IXoFIVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oz/AWgg5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oz/AWgg5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BFCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757798393;
	bh=fryc+rfkwEIHEJ4anq6UugdNKkWbTMB9JsIdOo7AX6c=;
	h=To:Subject:From:Date:From;
	b=Oz/AWgg5vfFI+MJ3/mDYgzEp+7XGyiI0ocLHZA/8rMi1xpalpLrYgCJpngt6+Yjcj
	 5ofa9JMMxhMLuxgbx/Pr71ukyXKj5haEMKDasKvb/bPfwPqWtDG/oqYnbyolM0T9aj
	 d6K2nk3+2eDlkAX5Zr/t2M9iPiHXr5EJGgE8SAltmV+KZyFF80sNCr5o0CBbZBNy0X
	 fpQQGcA97Sw0T551sldBuCf3vjW2tnDzKwnKBwfgjjp1CEhff1UGAZuD/XUmFVhm0D
	 aAVEQ4kpnAE2GIeBcV0uyLpi1+mwOZGcWK2mhAf5eQ9Vgoej6S46D7seKzVMb2mM0L
	 I03Oc/rcyVF5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961ABCAC587
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175779839358.22809.7072611888094641728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faec08db5baf9cdde0fcef908a7c860dbe69960ee572d0cc982c1cf87927a179
Date: Sat, 13 Sep 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757798393
