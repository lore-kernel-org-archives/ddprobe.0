Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF6F17C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 00433C433D2
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686370686;
	bh=d/BLRfw1rD7APsFa7rMYn3xJdsOz3cZ7gb7+aol6dt4=;
	h=To:Subject:From:Date:From;
	b=EXSw/VZprXRS+qqQ5oyoFI9qEdBwcg3j4X7IzJ4GPwd33WSu42Tpm1HnT7jz3+l3n
	 wIEcfIlG6luBXmUW9Jec2u/kdsmiGmvHt6S2iTmjPP7sOtqk8GkGBoevRgUy3OTYIP
	 6wH3jliDMrWravWEmshK+3Q9E+2mS/8+jB5RC+6uVyaj96omEvaMaIJntvXbUg2LEC
	 UF2ZACbJKKmZS/KEQzEWcjG/Eot6jNC18PcDvRTG0OdL3XupibPmT7Ansenez5/K7E
	 ZGZ5H5WUeCHT0W3V7385kOSHTFqkgov6YukZIWim+obNbNO0t0oWMJbPMX++PSdmFD
	 /8TMGi0UUt45g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C535FC7EE2E
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168637068578.10121.2734518223395594857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2876a9ca026ea6563b5177c75f5361ef9fed14f76c20523286fa95e1b58353fd
Date: Sat, 10 Jun 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686370685
