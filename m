Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E830CA59
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irkAkPJN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 825E0C433C7
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699343296;
	bh=GOXdcIyLkNK7S0Xu7KhRP/RmzlozfS1El6aEN7/UAv0=;
	h=To:Subject:From:Date:From;
	b=irkAkPJN+HN73LnYVk3DBPj8ulpZNNS6dQku1f/CESC6DNgiVO3So//ufA1cZetLu
	 puR1UDPO2OODLe4UG00Rzx0mujwf/Hc121T90qWRCyqD1Ang2xp4KKtB6kPEfDwomA
	 lB03Eh2CKUZHMVoku2UEnjqxWybMHgjSqgKYBsKiOeXdMle5z0EPvRN7cYc/j7E8D/
	 zMYEsM8Pkv8CjJczuoV4dUHior1gpYJYo+xmCzkqBuT3SiI0NsR7x5715EN8svCRoa
	 qNnUpu7ZzAT/u/r8X7lz8+l9+gD21nHSZg1vjjgVYH+CDvxClZZa4mcX0oyBRjAZrZ
	 bNrQW70OztX1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63658C4332F
	for <ddprobe@lists.linux.dev>; Tue,  7 Nov 2023 07:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169934329637.4810.16903258453869766508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eb7592157fa84831ed42fbf6c5294023c49a6a68141f55bf8cec8d36c198417
Date: Tue, 07 Nov 2023 07:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699343296
