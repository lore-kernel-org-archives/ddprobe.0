Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 354162F22
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746323994; cv=none; b=UpJQ2BkJWlIzj2Km+KdzUe2KUCkXdo/wRByKzLqGJ5QWWCGrN8YgpvPQ3jNXYWxkXA/YVVHnkekZnAxJJRZd/mHXw+9N/1nbZAjjLgNecBG5AiPtzu5PnDo/pC1cbLNoxP8nnAvhJYyTpcGbqrysHUOI1rnmHWD9gbT/M4qH6DU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746323994; c=relaxed/simple;
	bh=ab4SBVwbHvx/fKBe3ZusWNhxaJrzDomV6X8Svinf8IA=;
	h=To:Subject:From:Message-Id:Date; b=DKhMY3ZWgkefu2h6KJLMzelfh7cH/fKB49gN1YudR6gPi3Vd9EE5BwOQ5Aa0WIOFCvXeBLxOeAioUWdMGI9DyNf3jcB6LBnG4cH4CPubz5L9JutOlFWmhPxa0WVy+WzJDyvbAyxn6KxT8Knvg3smoWAtm7fE3WKKDCvpb/6Eohg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDbmQroC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDbmQroC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5254C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746323993;
	bh=ab4SBVwbHvx/fKBe3ZusWNhxaJrzDomV6X8Svinf8IA=;
	h=To:Subject:From:Date:From;
	b=iDbmQroCNY6edyiGD7sa36nvYukz/4lZLrWrOeW6KaMksKDb7jNIhjA5Z0OnWKB30
	 joU5WrRiARMOxn94J6m+Yzx9PRxmQi02X3NAdngAEfisUSPoNfiZQ0KKUUlnTTaBPg
	 DP9J6gOtpBBHtHluyMzW+RE2cR7lzwNe9ClpaXVKsfBf1WVDKKbJ2vFCXrlcIwd/w+
	 8YBYqiYY58AxFxllICIbutE2sHKEArX33wyrYD6qH2moZeantK6Mu1vzsrOcZpATx6
	 8UNgVzaXm3aT6WVuzGcGa68WwOIjcPU8gTe3huO4XdyFTGnMnRhQxBG62p97fwCLyr
	 GwkLP3m8PL+zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930CEC369C2
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174632399357.29036.7223079320184122331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efdcfbd8a31f5d72c86bd311ff8ddea842443e046ec7666fd94aaa0246fccf75
Date: Sun, 04 May 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746323993
