Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA823364
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6FB3FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669603254;
	bh=7ff1HYGRUW10FtFyKUSMIFYitfcgVyI3Ki87elfaNQo=;
	h=To:Subject:From:Date:From;
	b=qSqmYXsRaOx56Y9sW0r4XZ1T4fC+d2zCsmqcvVd/DbAUnrbwq8ihm+8TFavXZQXNA
	 PS/263pBNp3BSGt6vzlFMS2d1U59hAWTouTN9VgQiTYzpCRr/Ew0yIeERM8uNEGYPb
	 F1CPL2CO3wKzLmh5Ply33McqVB/maObJJ7+kkSB510c5hTogPgZizt6HBRUta37CPu
	 CRVmJ/oSUqGaqXQPNjWZ+/xT/ddB9XOlmnAQsH54e+6xLfvip9jpmR7RTdWyeRCPGd
	 kmhqOQ272iASpu+jF4tEksooIFuiz0WFXitb4bupMaKxvPzm12EF82rxZLeHoRX7wX
	 sPPCygnSxRxUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 533FDC43217
	for <ddprobe@lists.linux.dev>; Mon, 28 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166960325433.8536.2848790367140810422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a04d9ac693b83a047e61efc13bc8af2bdc0a0051184dc5bba32a358fb026b09e
Date: Mon, 28 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669603254
