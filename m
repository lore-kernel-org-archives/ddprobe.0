Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAAB053B9
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 820C1C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670873487;
	bh=1Kx8C/gAsvItJglfUpnRU8UOkmcm5K/m9cBKiCsdZ2Y=;
	h=To:Subject:From:Date:From;
	b=g55zBxr0oc/r75WSS4dBLAtvDPPy+Wa9M1+IBb7JMNDqWYLCHR86En3nceepMNHJC
	 m031OuZUP3gkbpzrnDWZeJ0FKco/88tSllkau3f8Tb5Dp51ZMcnnyAP1HTDy7ijldt
	 yUDLVvFOmTGRDN1W2dRjBAzP7m9ZAHUpnKMnAUGL19SCk1xudzIlasGie2ld7lrY+z
	 whTF+JwePB6ICZv6f+qZBgRr56l2R4G4RIJKWri1dowGpR6pmcSVUcNKkyYZopuraJ
	 c1wp1nHx8SXFI1esHfL21NcOCY6e6fKeoqqmMlnvG40UUGJETH6cIGb8odPi9QQbII
	 QyfjrEmPsHkoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66B54C4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167087348741.7618.12764914390310861179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7714937f30795ad2d6fa04372a866f57b1410c09f25cc943bc439073aade53c
Date: Mon, 12 Dec 2022 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670873487
