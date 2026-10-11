Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6165A15A85A
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791686434; cv=none; b=InuFNXweqz/bQq3aqkOTa2imqN9INPn+zfFv3kpjq1fIZjAatirZbJXWKAtxtW+r63/h43F3iZmz6rYOKyAKAqpwYQtDUqKEO4QgLbvd0d2jKIMyWl44lk77lb6SKR5TgM9Qvveh+cw8hPRp+2qaqgjstbBw0rtXly1Pf1qEhK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791686434; c=relaxed/simple;
	bh=7LPF1cgBLYnZxFO8JhriAPOcj1bTfYh7m0X1x9USFv4=;
	h=To:Subject:From:Message-Id:Date; b=PwPguLBSm31SeB+a6oirIR8YW+Nrwl8P1hlpd5P1BGYoMDm61w71SQ7lxCBENqjhZ6yd1k26JHO3IWDoke+EeCi8t4deE8yY8XlcH3IcThOaUImATclXQM+NDQYRTG3FiPJGM1iUcSRGL4rRb4Tt/MIi/1m8QduLvrcOHFGqn1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tg/1SaB5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tg/1SaB5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E14C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791686433;
	bh=7LPF1cgBLYnZxFO8JhriAPOcj1bTfYh7m0X1x9USFv4=;
	h=To:Subject:From:Date:From;
	b=Tg/1SaB5Hru1KYWBtoFlF8otk+RCSHVjqUoptl1pui8HlTn+y/SXsDJN9qAAwdGP3
	 RFvuUsSnwfgL0AdF+AIfds+EHtFJNeFOLENuY9M8MRwDh5KZCFfMKD4OPdkJJOHJRD
	 llnaf10Qqw5Bmg4fX/TR9eLNllDboot7xPfcZuHAeuH+9AhAmSZbUfcSKNHinrP8b5
	 KAA5deo0fEpXaIRfrQBorL8tTM/AdOsxn9cSk1b/d065dT20tZTDLd2ZR09EwLFapj
	 zghJCW34xjGxr3uz94Sc5flxcd3fDZafUmUEKdSIdj/Xk2MZGjvJjkSD5vdsK6VI9m
	 xKdDeGx+UkuRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD88ACA9EC5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179168643368.18270.5352110055879752350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 335b0fdbfc049116e38c83b3f070c590c1411bca181ae108bbd1d4757dabeb89
Date: Sun, 11 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791686433
