Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D47A136672
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755087594; cv=none; b=oL/4w4JOE3bg965aCChPrimZRXO4XuKeSlL0vJGgAtyDMBX7dv2+Dv5aweKEesfCHQvcah5NhavuP6vDrB1adyDWZNBe+EkwvaKMvcUtzPyS/jhSJ4yisvjdXCy6jXxThVg5HbIYuRZOnIoW9hixWJojwV+RLfuHRIzTSkUT5zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755087594; c=relaxed/simple;
	bh=AjxzndTJc3+eBSR51bZNtaY58jMOT8CT9LO6mtD0O5U=;
	h=To:Subject:From:Message-Id:Date; b=U3L2EZirFQpsI3IB0IsLHfMEGtEwls+3mNoDZhlHHAlSg2Qroeo7JW7Nq+NaYM/Ub6USyX+jC21Qf8yK5zDwbQEADae0o2sHBS1sHHSaG6/88yDPll3KFXEA1fD1RI8CYmyYZwnJ9QWXJ10ke7oSKxhT1j5Np2RHdMg8YMMr1NM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JFkBx+gi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JFkBx+gi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A036DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755087593;
	bh=AjxzndTJc3+eBSR51bZNtaY58jMOT8CT9LO6mtD0O5U=;
	h=To:Subject:From:Date:From;
	b=JFkBx+gi42JUAoP0lNvkKohtRw6K2XRGLfcoy+LVlJvlmb53BXv17ssU4/VlLLPHr
	 kik8Nqu7ZQ/EsfFbvkjYFcK4uXWlsOeTJTPX0bVFiuiCDJxQLWXhUdPAm8SmdlwJIc
	 SJzxu8XSnnrpa4VTkMBsa0aerTtaeY4BxRlhzuBCR8aEevOQ4KeaYJxYMeO2yGcv1j
	 MK++C9rP901xXdJtwk85N0XDeHlBK8yCiyqxZdfbcZJK4RgZKSTDCJBZEnJrcsjQXd
	 wl+ebn7n24RxOfpEH5yUo6WZ86llGM2RpFJmEsaSGb5xmzP/LpLMibjhdRboaHnl1/
	 QFgkVGQzYcUmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F245CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508759357.1998.8316785677682826632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1b3a017591c0af3d052a15cd4027662102824b272f3f40bc7bb8e49bbd70140
Date: Wed, 13 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755087593
