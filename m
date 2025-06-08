Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2792B17E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749362394; cv=none; b=c78xqOf3hROoxXNkmPheTAeN+G1Q4Tqh7EU89G3LgyQitaXL7seKROagQIeSLqXfFagmlY6w/kPHtp2AJwUAD0r2nJJvEVKMEaM5FQXc4fEt4FHfDaCMpZ/Rdzs1sftZWOjVd7u1h55i8dQrFH261WZ11F0iBUdAY/+wuCELGPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749362394; c=relaxed/simple;
	bh=Xo3Rk6TfQh5YEHg3fvq+XwhcuJxLFr+WNlfIPmHRwXk=;
	h=To:Subject:From:Message-Id:Date; b=I2BlKV4tk75Q7tRqONDqbBspvxAeYKfbB5z/N0Zqq1l53zgInGDAxaX7SejJWuQVYcXFSVqkemz/5P2zqV/hKlPWziSvGf7wXuSGcftL4V1ZLCGJTCWbhanJ1TLDLnb0uuLkD7Dub7Q7s4i5/C8FXOPlJ+bwNOhst34RWER9oqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bau+Ecyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bau+Ecyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7069C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749362393;
	bh=Xo3Rk6TfQh5YEHg3fvq+XwhcuJxLFr+WNlfIPmHRwXk=;
	h=To:Subject:From:Date:From;
	b=Bau+EcynCcxcQT+Lu2GjfWxqsMOYSrcKPdaydoyVb1l2YPAnn0r9OqTPa2DjSLA5h
	 TCht6Gc7eJIJQCUh71WeBjKkGgvg2TpJmc6tnzod8rd9OLQVRqI/ekJosQBhPgyQPt
	 zMRy2kv0p8SyoCsGnfTZib6HynMrCx7XlrHgJMEUYGIFXCMtoHH4mi+6pEU1pqmbGP
	 Hk56x5JU4T6KG/z6n+Qi4szCTGAChKu/LM3pUB+6ccOuRMLMoTelcoRgV8pF1+yhry
	 SV3Oz/0t5+roNiW42L8TUiTuG+3+LTZIdkpMVpo0wCosZadvvb6GghqByzqPlKWCiM
	 i+flhzPLc8Cxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9420CC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936239357.21276.14522840424870502421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47180f784916ef1bb130e0de3b444da15ba1b77ab0092f3fea1607830a9c9894
Date: Sun, 08 Jun 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749362393
