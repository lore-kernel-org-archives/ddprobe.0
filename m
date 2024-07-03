Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0B41DA31D
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719975323; cv=none; b=K9L4Y0ngIAxBvZH6k/MBfJR7DPDU1SAT4ek9sKnSXHpm6cCxepBkLLbUo7s28EMSFuK9RbkWaRxPpil1DyGFZYnA2S80Ywj4V4WZc4CNQ012I6SzDQw6tq4KLt4KAIp5xCgHAZM8iKc4UhaoEQmERdWOcf0gBArbip4AaHtH14c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719975323; c=relaxed/simple;
	bh=tOSAfjVPtorZIlVvS+9ZQ+FpU9eMkXy59Ohe1PQBvlw=;
	h=To:Subject:From:Message-Id:Date; b=OJpextWlWFL+xwkkEX73omfuYm4ehdlPpY9DguuxM4MkY4BRth6dl/pFk0v9kF7lS09PtGJiR06pPXrsf6/5rVjCGX7q+DPQAbsngPPR36OXoGJ+qp2RkFr2RG1+eRjCXEc1FhbF96trz0yXRJUmOamuHymbqlrMkGv8NRkt6HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LdTYB+df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LdTYB+df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BF2C116B1
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719975322;
	bh=tOSAfjVPtorZIlVvS+9ZQ+FpU9eMkXy59Ohe1PQBvlw=;
	h=To:Subject:From:Date:From;
	b=LdTYB+dfRGkFxXj8vjM0yyHJu022DVgdboUd7xu7gT+WxerDrumuEN5PcKrxQxKfw
	 jJybEOrf0UjAjSExPZgThoYJxqqpHVi6AgGfn1gNnVNUx4lgXpV8ixEd4Kp5bQa7jw
	 0+w6VeH7fEFPy570CqE6ppngyB88Ug637OAoQ5pmGX98CLgJ86c486U6F2KbElXo4R
	 uMZo9Tzgish7mzFmiYxRKnJCqHnWd3DfKUSPEvVsLvVrwlsZ8hdPeKIVXgcczu1zEL
	 Vvth4m2vqxbNxi7mo9eAOkvwkAyIoGqDYATE32KlG9x//4Bu4HkuLtHDokZEoEY5v+
	 tiUp1uT3i++xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5290C30658
	for <ddprobe@lists.linux.dev>; Wed,  3 Jul 2024 02:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171997532276.10477.12659728437237073250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa669e67eda29e7f897327fead0ab5c588fd259bb81c179c1bfa6158575e801f
Date: Wed, 03 Jul 2024 02:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719975322
