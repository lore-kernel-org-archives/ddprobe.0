Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EE32264A3
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766109834; cv=none; b=E/SexcKimkeixFiKZDs2ralh28SNYeN78qiNfdWeMb6inaBbhncwUou6hnVEFNwVqlFFlZiokaC18MqOrJUZJHVsLLHAO4uG18rzXqBkzLTnnz1Ff4ydvxMEbftDfKt4JzFxO1jWL0+w5KtqB1rB6sKZzMx8RZ/PmF9UCNm+TDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766109834; c=relaxed/simple;
	bh=44NP7jsh1iZsUuoNGrIQ2jXX8NdxAvUGC1sFdY7MjLo=;
	h=To:Subject:From:Message-Id:Date; b=h4HUu2fYdPT4RhlkDJmyT82FEgnK/btR3u6s72c+vr4tWvPKYmXZ+Zu7XV2R21o5egmOtrGK0nS/o2Rke/6HeNNdbMgsV9pc/OePf5jlFBtt2antvEn+KUjNZajBc3pviu3TdYUd793fmxVJTev8tKXEzHoCbhbu+MTuniga9cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXbKYd7e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXbKYd7e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B693CC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766109833;
	bh=44NP7jsh1iZsUuoNGrIQ2jXX8NdxAvUGC1sFdY7MjLo=;
	h=To:Subject:From:Date:From;
	b=OXbKYd7etNlReWF5XNfgr4ICUBCXRwCgd6yBNt7t+SvFQPC+U+XABJIl8XXgxvL+3
	 i3yJOJtG5MmxSfaNLY/T8kgWfcczg7xQXCbSWBV8kTtdPEbAKHjrxug9kmyIdSqppM
	 zp3UWu5NfQbpF8Oy+QnLfLn3WJ1WE8fn6DZ8E+4VarEWinVk2ykIhwyllG2SfzR3RC
	 l9XY9dXj2qebFHVSODReFAkdEaqqZbNA3Pa6Vz8qmDW/zzplpU7S2hpj4+obgsBoxe
	 liH0lMoSr2koaPaGq9ueSkFg8PlGsn23KJQIM3mO3uXE1B4g/UzXl/bEHlySmzRh/0
	 R2CeOgGhmZN5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F455D711CC
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176610983362.25531.6908934941059194436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d305e540c184fe61dd44f837abf25bf5b3e00b443ef59114535e5194e616a97d
Date: Fri, 19 Dec 2025 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766109833
