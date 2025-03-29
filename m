Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E89A35972
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743253794; cv=none; b=eYRztcQ4crJQUrvGMnNK/z0sM6C+RjWgGA2EyPjLZQCZcfOEWIKbDQJQsy0STW/Ka6kzKSdSoq7TkVTJP/0fiDSCLEleBpJdzm/xsbo2Nz3h5cpPo2872qkNQjaTpQ/W8fAF2W7+ULHlfP1R7jf8FsSaWE5HgdZHsIa2uq4VbxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743253794; c=relaxed/simple;
	bh=kFMfkqYh02iVlyvXKib24vWq8XI5iM8fxe/1r0LhVDI=;
	h=To:Subject:From:Message-Id:Date; b=YnE3zmEcRPILSycYPl+rL5TsP5cu8vbpR2E6Yp1AYTU2jNXMfOxQ5WCVIQle663Z8UpMK3qcjDW8iaWG1ieni8DxrAGUI4Tbr1d0Wd3LVkU3qAiM0XPOVUHCcXgRMGV4bjmOz0HnQVabklYYD9mvFmlP5Q4kSdlQo6jJnLcltRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFc7wzOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFc7wzOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEAF4C4CEE8
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743253793;
	bh=kFMfkqYh02iVlyvXKib24vWq8XI5iM8fxe/1r0LhVDI=;
	h=To:Subject:From:Date:From;
	b=jFc7wzOlfv55y9c5qG3ryD6SSgSInSUhvxVLRgW8JisNXgQuE/j6US+37XKUFI1XG
	 rj4DM0iHSHuIXHHXMGz/17la0KI1oBR9rQA174T6RkjOAYiK/zQnw3NVv1bZ9Anctr
	 NcsPph3AkLMbo9i08B/4Ma1vzn9FeQTt+h+bNaIjYBrsHbspZKFuwOctAn9GXtnrYB
	 XAARdS17oZo988t2xsiZP1CeaVAgc9x398volMMSh+J9GAGK+8PsF7AF6a7xcjC91x
	 BuPqbzsI9I3LWmByMOOlC8riyNZfohRwMRTQ/B3YLjEy2Zbnsh4bSgKoSJ+hstFrzK
	 Q6EcnGQebOjzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DEC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174325379365.1279.5022671319320907978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11ec7d16cfdc3b4b018e0b002ebad4be2bbc273dc0afbb090009d4fac9ff1bff
Date: Sat, 29 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743253793
