Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295823B785
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZGTgGos"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 804C7C433C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701338896;
	bh=XgctOvQYVkrG3ial54ZcBjjLRa502zyfj44vL0yDDPw=;
	h=To:Subject:From:Date:From;
	b=YZGTgGosM+ObWFp8ipk+emzEfxSjtW6mw4vfd994rZVUHqoTgz5SmykH8jnu4hSdq
	 qv9Hrcv32GfPZHG2slkWcqKvua7az6o13EFo06+QBPawDs5k1XarK/05U/qH3y0+S9
	 TcAxPkxqYsGdBRT4PqapSQvTiRR1g99tPpqAKZPIF6WUSzSAqAbg/Jp0zQkEtPbiR1
	 25kK2RFgLSqc9Mzh3cUHrUq6HAjH0GKlveHa0GsqsTC0Lwc9cOr94qPF2mwsYqQq3m
	 p4tACee8DA9xtLhalzQ5MDhr31iPuCVP1+/MKP8VmiaVWZcrHkvhPWd53/mtuAztVF
	 PCtIvSnoSJpJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64953C4167B
	for <ddprobe@lists.linux.dev>; Thu, 30 Nov 2023 10:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170133889640.20719.17234254024347247919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9e7fc7cc885bd46f9b17226672463b5ddde65a41b4046cdb132fcadccf3a959
Date: Thu, 30 Nov 2023 10:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701338896
