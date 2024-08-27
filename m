Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395691803D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724730954; cv=none; b=UKin0phujkMFxWb6V8xuL0hwSfnQSxwqa8Azk/Pyx+9PGFu65+RkUiToz5I9U3IkWcm2DI8u5NqpLgQJRmludeOqwn1FlWYgpM2cGfanCpeQMj9Gsj6/PsVGmHs38VBJ6gopsUcl/YRFOzn2RZltawV4/TrfLe7VWwzrcOdoYrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724730954; c=relaxed/simple;
	bh=iVLyanO93wvuB3WWG8UgLmOnVZ6Vfyl2loBKBpHr1R0=;
	h=To:Subject:From:Message-Id:Date; b=a0lHXE9pG/+g95wU0yu7Y1JXaU2LRNA9u816WVieEij4UX3sWt+k4wLaBGDPSi/JV+XQ8TWWJ/vXVL2r4UEbeclZESnW1PNIJdkLRFDrSKdB15MakBNnQqsqMpkLyZJONlClvquh9mDCa7yEYqeckpG3FWMtL64wBIhwFZfHBg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYIkqc9q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYIkqc9q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5E5AC8B7BA
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724730953;
	bh=iVLyanO93wvuB3WWG8UgLmOnVZ6Vfyl2loBKBpHr1R0=;
	h=To:Subject:From:Date:From;
	b=oYIkqc9qcDSOLgraTZhTsINdzdkschCafDJTeyD9upLRlLbDddvdP9Pzv9rFTnP1q
	 LkJL0y8h87fhqFDqwnWm78DN+kmwQOhhVfyVuGM/2LXGYbuQmlzqKsR+Slu7WYCclb
	 aN8701PASB55CcrhjDJfRHlbEXlLgFHhZRHkBWnJJVx3mieIO+4b61t1r4kWyEKXT8
	 Uy+UIM5eedwQVvPD2DaUEK96q95BD7hwmZI4xwUoSE2b8iwIgllQMkCi2ijjvEV/zl
	 D+1gHPJcrU70dq8Z82EvRlPUhFNn0YfkV9JFEu5H4+RWITZH3oI/wRllyXCZJZpljt
	 uA0u7S1frvAIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1928C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172473095364.17324.11557819312425279228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9f0aec17c53b37dfe6d3736133990eb018e72ff7f11b24cd5a8c0154cf3aa1b
Date: Tue, 27 Aug 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724730953
