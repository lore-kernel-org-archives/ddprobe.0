Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A981487BF
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754954394; cv=none; b=Bfz85511+ZGaLbNL7HIut9pW42+rlg6efYzG3uv7GgzqZ6xYcqXf2URWKkg/tAfYmbOUY1OP9YPFOeCGYdJeoBHmkkUnydhqEEDsPat7boiahHHo89i3UAMp/sehiJMONQSdJ06z7GVohxTgSj1s5pt/Pu20aUkiDHV/RqYv5r8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754954394; c=relaxed/simple;
	bh=9FLPOPxD5TAZGFLNMeMHguN7wH/EKNh1TcW/N5xFnbo=;
	h=To:Subject:From:Message-Id:Date; b=SxP8/0dK68RuSurw9tHTHr+COLaZH3ZZQh+gvlAvDzwEfGNFN+raIJ84YLrGCdxEQ1PWZtZw1CYPu8ssxo0VceFAixiRqF5ITfMLW+AI7xXfBwFr/QMMfUiOscvTbXnPth0Srkg1bhrsywqKepwNa1rRuKB/GUYfnHexmrO6jsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4SilVQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4SilVQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E592C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754954393;
	bh=9FLPOPxD5TAZGFLNMeMHguN7wH/EKNh1TcW/N5xFnbo=;
	h=To:Subject:From:Date:From;
	b=r4SilVQecZ3gOcvqTA2os02F7UIwM4Y6HQhOUdcQa8JNIKm8hiq69AW9iPQUb69B9
	 CaiQ5B9pudySi0s3k0Am/QXOJqSJLJxhCu7N5PrcHFLcw8iHYSM1q02DX4UTFATPdC
	 dpFa1XcDhkewCaiqkuLpHuGrb/A83kWj7zeKNpAM4wV7LIdhFho9Enp5rEH8lXMdSo
	 chMFWXuIld6J7JgnlBBaX3rEG7IMeqtU7GaRixyiHqp6bSqJUvTvuDg3hWWmsVi5A2
	 xWuJqIWMtuOivTNlC1lCrpjVzJ8ElJNcxWceeZB3FithYZoFoBW/Q5a8i39/yY2qjL
	 cznMTPrJhv3Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDCBCA0EC4
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175495439357.13785.15687838720139873906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f43acadb11fa214fb1a955d22d90e6ffac3bf83add7ed358a467b406ab19b4c4
Date: Mon, 11 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754954393
