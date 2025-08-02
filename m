Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2322F21D3F8
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754176794; cv=none; b=KJl54JJwLNmT20vXMNSCWbGHAZlZ2rfgCJHYrzo7Fpzj2p3sZXNsc10UumWDUTG/EoiVVlqkPovtp2hHG6zGThaNR5wL6fkBTeUJ/+6QuTZ80LDI/MYo80prNtx56dO1p2wdnRJeVtiXGWFDLmU3FL8z8QrChZ4Je8Zq16bp3Vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754176794; c=relaxed/simple;
	bh=X86TSufA1i+JROs+RwYUTdanBfAedP+1XCKsXlEyLVQ=;
	h=To:Subject:From:Message-Id:Date; b=lsMS6Qxn7i/eaYUqQvskzxAhezm80+uzv8kglTbnpytfr49kSaI+BSDQw4uQm1Q3/ceGGlzwB6LW+Mmh2xLcPt8xMSzpResXLHtQRD7CzIv3wv/XsFSLeu2WUPm0E3qPG3wii8ZO5cnjNfroPAb0LxZjXGX7HUBXuw6faYEapHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QLN7umbY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QLN7umbY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A133AC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754176793;
	bh=X86TSufA1i+JROs+RwYUTdanBfAedP+1XCKsXlEyLVQ=;
	h=To:Subject:From:Date:From;
	b=QLN7umbYNWk0ngfUKVatTrZpZ8vXQgKeaDsCBXsQ8l7yb3e4mp2C2DvrE3mlWY15r
	 TXq+JC+tDpQ/CYZ6IfEIRdTj+Lp1YLqy7RzSzEXlYEpxQvLVHfmSyf9pD09emTnQyD
	 6NiUwfC6kGPAdSVQqU1KkeIrof4JSHY2ms6ejO4jg3rCAZUilNp32hE7dnGA36T40V
	 Kg9EmnvBnBUZ5MpB98T61/5EjMp1OxLDcCOnf4PcUZ/4sbfpYGq4Ir0/WR5zu2XH1e
	 DDofKV5+urrngxS/NcJGiktFut7b+HtNZTt/nj2dlEQxtKU/6CLhw16KQzKgFfEU3Q
	 ZbjCVtAKlAjxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F61DC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417679357.13191.7045475632984565442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce6c2e0fd14eb668121ae49ee3004a9e5d1934328712525f3cef4130dd247606
Date: Sat, 02 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754176793
