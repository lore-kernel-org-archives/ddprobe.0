Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AA604E62C
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fqpGaAeK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D710C433C7
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703594296;
	bh=OgdQB9KDOF2b54kkMbrl0Zj+6WH4XDP7z7Wg00vPRbc=;
	h=To:Subject:From:Date:From;
	b=fqpGaAeKwulqexGDtHAWtwo4ax9YBRbUOt6HHSWI8DOmdUsnev7TGJugVr87/5bnt
	 rpkPxBPVoTnWYFrcKsfNei09SBj+qx7pZYVxxQcBLBVd/VxZ08e71ymUDoxPukccxB
	 GA17YJHU17NawhuwGCrWBhaZStpkQh++oaOhkb+N/L8VPAm5mF8iRptg74d5c50zUt
	 iZP4U7g9V8jbx0n0I9zSewM5+sLVV8x3W0LYVXjijqz/dH5BCgGaksVGDq8vJkf1XD
	 JOrsdOGeXNIltCxLyAH3gYtENGK18fMA+Pq4WvgScHMVaZ7TLNqH+E0MX+xNl8FdPC
	 Vs1OaVeE1ms4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 644AAC46CD3
	for <ddprobe@lists.linux.dev>; Tue, 26 Dec 2023 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170359429639.31692.2142804107994460796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2582574afe1534e59a684f42592fc7511dd5e315a74ca78d6b6bb887d4b5d31
Date: Tue, 26 Dec 2023 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703594296
