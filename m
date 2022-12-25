Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 012827B
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E8BCC433EF
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671936087;
	bh=ImE697s7yJF/PMPOAnscuLs/ItHCzzKjngOyaaik3Q4=;
	h=To:Subject:From:Date:From;
	b=XhprRYM3kZrEI2AFLFsohSnTT/FQtb4jtc3z8p1XshBaS1FAuOwzlYbK7gDfCLoSS
	 iF53DoIO1J3zuVzRP9BNpjvsTe7TXKSTBLUjhxaR22OK64dUivfIvp9FOCNH3P3a7G
	 Zx94EvQpVCnTP3pAl3L6QM13mU1cb23nlfYXDkFLaMkv5JmdMBMp8JB6tQLaAX6M0K
	 1ghtOEvmdeefvXogUwrh9lA0TDRXp2MKNhwOfq/IjWBR56+3kbQ+NVV0DDrPWvAeIp
	 IZr6gk34Ph3LLzprdaaawVTbJ97YRUf5L8XH6hBsVc+Pt8beS7q5vmHHIssaLZczxV
	 ddQ6fhd7uJRgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DEA8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 25 Dec 2022 02:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167193608741.17800.7318021154530716185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db98dfe539f697bf9137431a81f8f487f1f4bc8ded750cdfba03aa659df7a521
Date: Sun, 25 Dec 2022 02:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671936087
