Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D70A02F22
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C1BDC433D6
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665263453;
	bh=i8FlRYO2dRqC3jtZVwAgXzJ/ltVfkPFCUSZErFbVnaI=;
	h=To:Subject:From:Date:From;
	b=iUOGZsjLt69kQbNADtpXZ24PzgOxi7FiDPzZlYEvYKcv49uiFexeq8aZgWts54z+C
	 8K8Cj9yBCQsJCWXUD9cnMqzeDHBFiF/yCC/TMfnnKe4/A3P5hRA947c8XPxo+hpQ/9
	 D4qNUXlg6gODrmXu3bA55REgyq3xAaytHqcc4BXXjL1V6L6NFCcQwQxzb34k0BJTN6
	 Xn5vsgW6O0x/3qrmMClaPMqfduy1i0BTme60NaSjVqcdBWoWdZzwOyZy/dWe4dSKoA
	 vz50+AO0oVLpvInv2N+fZqFmxzIk7rfOfFzFu4Vt+EVdguhk8YXsOizF00YMk+kNxT
	 6rC72bl+9wM8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5836BC433F5
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 21:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166526345333.32049.8965810242323320011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a57798a29af014085b00c12b1c4d3a1914dc32256049b9646f6a65348e4c32e1
Date: Sat, 08 Oct 2022 21:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665263453
