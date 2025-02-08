Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3FE154C12
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738986956; cv=none; b=PFDn+ehJIyg3sZldog/yu/49Z08sPIwqPMeMFqrMq3F4NM2oEgjGOcZyXpIsz4mOCJn/iXCYLX1ssnWKQ2SVHjeTrxAbDRWlAf2yjnlp+fgEaAqx5hvTrPkRcJ2YeXQIYWSMcE59CoTghrgbYmst9Hv5PlCH7Mb+7DNXuWyMJsE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738986956; c=relaxed/simple;
	bh=zxxoRlhmHUfCmbkijknmdwU5DSvJy12j18XVY7sElB0=;
	h=To:Subject:From:Message-Id:Date; b=d7Z9zmRsyH6SlFN2Yh9za/Kpn9Idxh1v8DFNOfIU+p0Ni5G8reUhLWQ150JSHHKCmyG0SJ7kR+gx2on0tr2Xfv9Bq2PyjjMfSbowz2JXjsR2lUZ2VMuzDpbhv0YCbGg/O0V03zxN2CWfcP8FYIT53odiHT+MmQrO/AL8PtejH7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wcr39Zd5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wcr39Zd5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7F3C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738986953;
	bh=zxxoRlhmHUfCmbkijknmdwU5DSvJy12j18XVY7sElB0=;
	h=To:Subject:From:Date:From;
	b=Wcr39Zd5LJsxLWMD5ya19q12lkQ5f+1UhYnV9rJU3Qe1C8twXIuYEJErJExCquM1L
	 lsHVFzwCQ4I+5VKl0479SIlGdud8Vuc3sZGZ32gTR0dDQ8zysU7FjAlo9HWksjgy6L
	 BLLP/ivs0GUEjAlCH1qQFsQ/OD1By1BJ3KPpF5XRH9JdS27DpZIupLQMK9byqHjdrU
	 kdSbez1Wi1CT/72dAyG0n7VVnmaLfI6yQjyzGQtGnoDwl6LYrMBNhfoch9Ml8MeGh7
	 pD3/vw34gkNx71kKdZvPRWwfcer+VNit6aGMQEMRi/9fGGQ+8AFBi9q9torQbQ3M/L
	 Xve+U/8EUW1uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A252C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173898695359.8306.4599856864439103785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f553d6383c6122fa774b3da107f15204213d7664fdbce585463d7ca737f6e73
Date: Sat, 08 Feb 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738986953
