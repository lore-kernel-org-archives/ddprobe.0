Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFCA168AD
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB41CC433D2
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683541685;
	bh=RNY5Cz3/VFN9zp3yKfGeez1IeSRwaWM0Xa/yXYFgQT4=;
	h=To:Subject:From:Date:From;
	b=rtMnea6TLHLnehClyQLupgWA0Xs4rhygrf+IYmJrRQuzo470VL6J7OtFJu5dGK1nz
	 xSk7Fd67VekaLEqfmaqIjXjFYiymQ04/OCLobgwHg9CdL9WowP1pg4rPAXQmNHN/xl
	 HPlzE8edvDA5NZprUwybRekO6AqSiyXYwnH31xKNLsp80OIZ1FPv4nnTeMQvx79BYj
	 ydGRy90qUQrM8vCjcaUSFwskTFR1FeLTaCJNYGbFViLANtWCYGOyVKDGpC33SHDuBr
	 eANyvktFetvpdXEOUM3vlXxLOeAoy3DnQIs2SWyyHfgMFTLtyXYw/amz4DVMU20dnw
	 z15SUHFLaBAIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C21D3C77B75
	for <ddprobe@lists.linux.dev>; Mon,  8 May 2023 10:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168354168578.425.4161548846040080174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070712d73953caba8d9f22596eab28ea0cf0d5f226807cb1300c6b73f28d5e4e
Date: Mon, 08 May 2023 10:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683541685
