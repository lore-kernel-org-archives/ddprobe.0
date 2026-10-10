Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F203033F7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791664834; cv=none; b=E+PevcSxeqntlU1Zhwsauu7yc0xYrNsqaKaJhGRlWnSU2lwiQcTvGxN7XG0ZjCHi4bBWrADQNUIUGIS2CBplQbWO5XX+7bHPanVfn1K5uXDBbzQggfM8QBxM/Rr0Sw70MQRpzvaIYJO97bb84rxiMTvXBlE+cM9aVLxg1AMGbFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791664834; c=relaxed/simple;
	bh=zMk7pKWjQ0yDBUbC/2Hvv9RH4KxNneJa4e/o+E3QxBc=;
	h=To:Subject:From:Message-Id:Date; b=BXEUN9zmXvS0+LBpbQyJxaDYIXGQtWX/kR8dCKm5yKsV1O56t1OzXhNmgYTv0/X79wcb1uawg4Yyu3QfTUxePHUt0/UBx8U2h/YGRXz/MfFEgfm0TwPO0DupcEBTHELzO3dnAFq9fyKG2PPsV06xzasq98TduwF6f/cmPMaX9lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2Xvy76S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2Xvy76S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFBD0C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791664833;
	bh=zMk7pKWjQ0yDBUbC/2Hvv9RH4KxNneJa4e/o+E3QxBc=;
	h=To:Subject:From:Date:From;
	b=H2Xvy76S6GbRuBSpjf2moWnyCdmU8ndK0EbTzF5EW318pIHrD6S5DJZ9OfmzbAXPs
	 c88xIKweiKkLEgVMsA5X9vqcQcGMiXDH7/eDBuxbxoUfwNqv23TAIY3twwSFftAgi2
	 uAWSdJaFFVr7Cn73PgoBtzxyKgBD6w5DL9xImnPmEnfijfASxSsLwM8oUZmyyYkrHz
	 9vhmr2b9McsOJXcc+dTahNZtg5UxDksSJqgDqebTEVitynKFFHcDxLphDF6YzM7GzH
	 J7G8jLHIqY3dUrWBqYeeqCh3JvC7l8LV8tTXpEPs+w1NKqLVJMJfsX50aqqJSKdZDI
	 EiU2gplg3d52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD93DCA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179166483370.20410.529556256896877358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b29a4e653ba6e164565bf667dab3573f95f507071b550e4bbc2556f4bd466070
Date: Sat, 10 Oct 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791664833
