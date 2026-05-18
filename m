Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A2A3F39C2
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779114036; cv=none; b=q6n1BrUBPiQ5la4Eoc7qNGKKz8r3SaedClgi953evJexEPvIpT+9dIdX2v21Eht9C+WJfXUtLRq27mJK+1H5MRMlSkzvDFkAfHKms54/cqho2uMZSjJFW+miOmDt9hgmEub7BFw02yzrfVeE3+mZchS7BN0F5GiADkqC+/IEfP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779114036; c=relaxed/simple;
	bh=SA9jcXLwRbVANsYaSurvpsSVrP2xI6JHKclKyELWGW4=;
	h=To:Subject:From:Message-Id:Date; b=sK64pNEiK/dGTKgVlp2iL5Bz1ca1SLitKLD+bQAi5CA4xAw1TKkRQu/i8Ru861UU0ELCyA/7sW8nXxdQobDa+ct9et/oNyka/zrG7FAOAJ1L79/YP7ClF9DtXYMrOwIsO16H0gY9FHJebl2ZQgxlRzbii2npeNi6ArRWJuG8/vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sf5NlkqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sf5NlkqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0899C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779114033;
	bh=SA9jcXLwRbVANsYaSurvpsSVrP2xI6JHKclKyELWGW4=;
	h=To:Subject:From:Date:From;
	b=sf5NlkqLMn5rj2wvHftdo/T5Pgrmvix9GYlkFy8D0XTPjFjilWUbLP3C51l+KtBj1
	 ViV0JKMr4NOUQf2fhgttRD8QyfCnv361dlZSxwfDk6wPyeeH2dRwD2IaGw2s4w1DAm
	 x5WrRHCXvTdAZQkV9Qifx8Ib18fPGCoqd8w53BLlFTkEEYCCbBmEZPzqEt+9lLvUts
	 7DvqQITOAb+aZtEc4HZaFem/J3f3RLUp+nOz0yIhvHr4tKl5WN8uz3IdsgCCfZpoq/
	 rLXv+JhJGTT/kZURgkXOxJGfh/Xhnv77POHFE2LBLwGDY/gDa5ci7e93W80R7EtdOC
	 XdtWeL/qaUfQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE45CCD4F4A
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177911403369.1250.9289388036820804720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea33d631f69114bec933b5691ae3130b4ba68bb62f3795c79cbfe43b132f71b9
Date: Mon, 18 May 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779114033
