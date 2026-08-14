Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B80E19E839
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786668034; cv=none; b=VU6nkOpZq//SoyPuGwwo8sF943sLsfLyNbGbHh1OgeHljXGG/R5wxH0nvXE8R3IavUetfftsW2/B3WVozQXiD1oh3J5NMKPYHMSQFYssxqJx6/fUdJn/8uFiVEikKdOe3jDD39xFzVVM3SDB4Vdyocs8/hJQas9m+p2olqIYsrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786668034; c=relaxed/simple;
	bh=PsZaMbeFbXpV78YJdFa2NmE0uoArL/usoGLYyL96UYA=;
	h=To:Subject:From:Message-Id:Date; b=cRoSP1Csv8Hpuon1e/wzxPAjcQwgyR67KPHieBEa3WLXvDW1A+3AJILQVyN1AXLcVJ6FHAmhWo/DyKsRXhXCkMjGgTRf9jVhSOiUIc0t7b9Pz+Sji2fPOSy37BtDLFxoKP8fIhoPLe0LbKee5wuMtLNgwNo8zx11nFRxhgMfWOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NCTfZiKx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NCTfZiKx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4D2BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786668033;
	bh=PsZaMbeFbXpV78YJdFa2NmE0uoArL/usoGLYyL96UYA=;
	h=To:Subject:From:Date:From;
	b=NCTfZiKxaCO90MSDjB3rsq08jyAosWeta/ScNmKkOVSDgddLwklkIW/EUGfvAw6KH
	 /jzyBRARbKcgDvxNVzppl3xnl8fu/WKgmMmPu/JIKZ6M/4nKIrt07hw2wjvdTbG9Mi
	 Tj1+OmcW4Mp54yh54AaZOgVcYIGfhpBcCYnlYxQnSbvbxLkqusWukAFkn/tyBzfa8p
	 ngDQj4mB36RA7XRE+10767F7qhunt4TlK0J9yuKwFsWub6kvJTfAt+oKfhUbWHj4hc
	 Rb79IMB3pGqpC1Uqvng12ulhluWqKxrtESP4FVWNmZmZbm/7/MCpbvieHwUufOu3yY
	 VWoTP+IqWlcvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABECCC5DF67
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178666803368.7387.17713374715812445614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 702b2cfd481f34c16c0001f8c57b14a0f193b2a24ac8bdc71e8012a8cc41c299
Date: Fri, 14 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786668033
