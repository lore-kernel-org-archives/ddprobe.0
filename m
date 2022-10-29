Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC1AC15B0
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68B6DC433D6
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667032854;
	bh=xFkySUc+P/cbj4lBL9LwRzSxWZEQRNf6h1+d4nV1L0U=;
	h=To:Subject:From:Date:From;
	b=A636woEPF0/K9DtBuIV8KpMdKh2xr8ka82cebI/heBpfakHXkhQ882TavlhYnM7in
	 GvejxfLrg3yCC/8FSW8B/JTddu3bpmZLMw42WsRv6+gSfph3IXc9KeaWT1z/PCr2wL
	 3Tbpn6bOJN2l1V+9u1hqw4T6XwI0sIPWYcUOCTPshUpQTD4/R/3h1nI6vw5ZXjelIJ
	 HJ6Vjh7i8mF6CLxxma6oTuos4Vebl4sVvFvydxoNnUwFrpHwUGyfv+gFRd4WCRFKct
	 c1ld2AvBsLf8T+A+mCA/vSiq+mtvyNvk3f9AOEf+R04WwqeINZuoEiQVU/UN5yQVR3
	 QFQvSyZbhjSFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52F9FC433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 08:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166703285433.5953.2829001789544922737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27620851ef2c97e4117369d4e8989ab151e2ecdb1e7c9559c29ab1e315712889
Date: Sat, 29 Oct 2022 08:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667032854
