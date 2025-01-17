Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 364E71F8922
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737109554; cv=none; b=j5If/9VD2tI64xTKs75Waubpk/6+6WZADTUyKWIi3Wvf8rNn7t17hzaVXKcyohAhxsf+faV/sFllSyRgwHv9jpD+t25ti70U/npHal+pBXJVlDkDAUHHcU5v/+qBIrbmy/7WZxIBLTzkMq313g7XHOWquxarkoUN9Kf3QN920iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737109554; c=relaxed/simple;
	bh=mfWgBUrP8MpT19QhmE+wusty5Vp79SvMc9ZA8lcVN6w=;
	h=To:Subject:From:Message-Id:Date; b=p3ddB+AgCXJnYlby4YTNu0GxzFaG0EtLGD5zw+I8OVn2UmUcTUFedRO31QPUJfuYMfo1QubWQWcjAw02Xgm42NLHPLbWN/2sX0Ou596fMmeXu0iu3g3dltyhEcnKgj9znOHXxZKrO5b8jILjxwg1HHp8drTRSVs+ZEwf6zH5zjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zevq1Oeb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zevq1Oeb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1782C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737109553;
	bh=mfWgBUrP8MpT19QhmE+wusty5Vp79SvMc9ZA8lcVN6w=;
	h=To:Subject:From:Date:From;
	b=Zevq1OebCAzN3fg9Jv+hDYaYkocejPHQEAf/kQigynRR1cQCA9P04qXFmOsS3jvlQ
	 1nSkxTlqv0zddlfNTDRTH6xI4xRsDh8CcBVSKjdThTnJzzlTBsCBzG8gw4J2bDw0OS
	 o6yxCrNbkAbBGdjd/E7EXBhhz/XLXN+dlZ8aQD67DKWkt6pMDQeQ4qq8Fuwd5Kl4Np
	 vESlmwNiXXWmBJzzWwaLiq12AXilClzERTyor7xWmvI/W7HZLxSUPVIIXUqcscfJlS
	 qBmLMp4UQ2BXBY+PGqusxwJYQ/A2Ybn18molFuAjgXAVdMTZPwk8fJ0U7H+cntave6
	 Vh6nofNmlhQXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A41C02183
	for <ddprobe@lists.linux.dev>; Fri, 17 Jan 2025 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173710955358.12471.15964262061145236213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75dec71178ba0eacec8bbbc991684b10a7c867698cb2af29036a9602af9a727f
Date: Fri, 17 Jan 2025 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737109553
