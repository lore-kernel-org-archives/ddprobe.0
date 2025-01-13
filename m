Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278CF322E
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736728554; cv=none; b=F2XkutuM73NIHT1XezqbH5GLkS7F3DOrJQ083L1FPGFvN59e5FdCG15xKM6rO8Ie+xe25IIhNqAUW6C2javy8c/uuvhADjv0s6nRmDAUpad5mTsEAIYQdjp/lXeMHQu+LiT1bnp1Jah2p7C/hSHoJLWcQQYCiC5CDSi2aACUIHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736728554; c=relaxed/simple;
	bh=aK2XsA30K6ueKfEosPlJPwgnLYr+D0thtMofLR2OxGw=;
	h=To:Subject:From:Message-Id:Date; b=DdU+An53YIKmBGSkty+V8QbI8YatQKANAdVXtT/KBaM04IB8SGaVvaEVMftb7dj7pdbipddyJDxle2Q3vh7ROl0SCOhf0peswH88o+Gn+Qt2qKNfOGzhuLw+PDZyrCRYuhQ0QDgRjil0Ys31pkF4ZAmtXtcN+6Oq7tY3VDstV9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J4kRtn9i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J4kRtn9i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABEFBC4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736728553;
	bh=aK2XsA30K6ueKfEosPlJPwgnLYr+D0thtMofLR2OxGw=;
	h=To:Subject:From:Date:From;
	b=J4kRtn9ic9jd4AcOrc/+xJuZ1gRMTdncD6Ovg4fLFZUDhspmIEe99O/I8RiXUPhsC
	 uXHtPM5D0Do7bBHI/vj5UlY8Xa2QEzw+fXJQgZOIjXzmbPsHi+KPGZoMUxk5ljC6JQ
	 WqfGVoVeRGTYmpwRmBlWjXW9Z4NuTy27YTFXlL7+g6bbO7x+S8v5qy7AD2S1AGWx54
	 Dj9sEPX2FZjVXlO8a9DqLL+0RsKjWUrJwxOJZurD6Hbb6ihISpcVeOBjnC9hRfFLgb
	 I1W/f4tGByE9U7hVsO69NUJ3iylzjETHVQW1ebgG4dAeRA0cvy+C3BAl3sWPdgcGye
	 4qQ3QkoH58oOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AB26E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173672855360.21170.14706726761817247063.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f6fe31074ce4e905e18959460f21527068489bb065a6825de04c86c51bdc6f1
Date: Mon, 13 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736728553
