Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C587C15CB6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 777E5C433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667041854;
	bh=U4ngOTQRzAiJ8o8XseTXjppFjDhqVIN8Donre+vrWso=;
	h=To:Subject:From:Date:From;
	b=NFf0QLWZQMeOI30z3d8GW05z1NP8Y6GuLpMj/IbtYHIv1cKYcJpil7y1Zdv/uU6A2
	 9C8GuCvFZgfsKil4p4p8gr4EiN/may9iZFiYmygwXxNEk48MdPHxa3Pfjo3OnjTQ3s
	 Aqxw9ub8+4FQvfUBZCqOyj+rw+aKDjaRH3tFnnV0LOzCU820aeZumcT359rz067p+Y
	 Aefif/0qr+OYBDTXSiSdPIxurPnAWKkXLwyNQ9pv9tW8COccoB+WOXvcuuofM91f+E
	 aimpzliJnonLvQLznS0M+Q8D0AMi+QFcZ9rFD4EZjbO1VuFr7hdkb65UsxsDNnxBNx
	 AySu4aeXvQHEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B306C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 11:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166704185436.5848.5460822657807255442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d3dd3ee5729a669b0ece963ea27206eaa93f78cd0330e93cc699301737ab36a
Date: Sat, 29 Oct 2022 11:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667041854
