Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2359B231A30
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754351994; cv=none; b=LxK8Oq3AjVB3+FLTEcFmnN7Ols0qij5fHKhcg+sL3Yr8XVhLfNfut3TX6vhvOPo7KujB1sGTKyTN/I05sA9wj+mfJVqo3syjkhypKLqI5thdbmu+KPindwWiJoS5MfuISK36UJiXihDVWX1sIXRjufrjkpS30du67CJSodK/6oQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754351994; c=relaxed/simple;
	bh=wyYcIUSHSg+Q75qTIqo5SyfW7F3oVmJLlwlgZp/qoKA=;
	h=To:Subject:From:Message-Id:Date; b=skKVTmjo21q5jcgYNnnNZ/ucCwMaZGDUJ+XC+oX5UI3zA3DS9WZugk/2TAPYAssvNvxe9Vaes3TuM9YKrqMg/q+49+l/AwfoyCm0UgeZjKxPq+lMsUEstypimlAAzay2Ya4p4z0ynCD7oTF9/OGI4mHk+L9Am2sA42keunpLKLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vIkYvzZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vIkYvzZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E352C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754351993;
	bh=wyYcIUSHSg+Q75qTIqo5SyfW7F3oVmJLlwlgZp/qoKA=;
	h=To:Subject:From:Date:From;
	b=vIkYvzZO8xDFDV+FBZqM5tnfSyi5MuRNc5ifv3GJQJ9lskd3eOZcnb1wPuhW0FCWc
	 qp8MkZx6uo3SiFKu7IRTaCVmZV9zJy7SnWZCUMTZa1BAhLcU8j75qCbSHO2HQw6R99
	 zfmUsHtKnish0sgfP6oC+s5SqmhopKDsxhwADOIJb919eSdPs/iNpAMwzJpJDXKr9l
	 o0ZF2mn9n3bF8TkTEzMcLFX5CV0a8488QoKIEf7sD9aa7LAKKYjwLVtIYB9MaBigWC
	 MSS55KaKuTypU955NX5Fqp0grjiOnvSN2F2ucfLEeRaiav8MbyoX/qD4njzJsvyu2K
	 DxPUiyaNf5oDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1C2C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175435199357.914.12610530994658985770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55629018644f6bf0ea129a5d48e4c21d0badb05f9060ca8ad21978df2edfc394
Date: Mon, 04 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754351993
