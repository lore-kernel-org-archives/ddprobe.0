Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC33A34
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E21FC433C1
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667393454;
	bh=XlBKAxi2oh/eIXqcEisTMo/fAVr7zzPRdUzEYaRFMAQ=;
	h=To:Subject:From:Date:From;
	b=N9quaGwRSsuiNqke5AaVhf47t2BA/lSQW0RunYUWyFQNOD50+i8jdX5Qc0zoqQwfB
	 KtjNqndDScw9DzkVlSJkOruQ7T3nO9KyJiAcwuSBOQRtoJwIphcQWpLfs+5mXN3Vvv
	 +njY6LL9I6Y9jAWT0b0ctjAQLEEajAv3NjzsADT8pNdDkltW/mJ8PQNLoTu5LoiaDJ
	 8zsmHRUCTGBARySI/RVa9AaHTd1/p8WcgF/vQgIdIjjYFGxBAkvNcCWLF7Y+opQA86
	 kGXCjj7GLzuzUSKlRNms1vFYCaLurrcvCrDXh/qIuowCxgIv02zxnKCcIJjHBIq0ni
	 wPchYe5BZGm9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5345EC433FE
	for <ddprobe@lists.linux.dev>; Wed,  2 Nov 2022 12:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166739345433.10477.6862409115168062468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83da47404a1cec46e348587e7bc7aa397d825386a33b26ef94646ad36ce9569c
Date: Wed, 02 Nov 2022 12:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667393454
