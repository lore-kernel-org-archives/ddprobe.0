Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEAFCA23
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78725C433EF
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672969287;
	bh=mNe8mQ+GZa0Kw3hASEnBgo2GkG7WDkYLyQgLShpDdL4=;
	h=To:Subject:From:Date:From;
	b=IiEc0+NJKL2ed9uSfGV4ePdLlC2zeOZrqsyzrsdcVX/b81Ofl2HT1qBIn9Ad9LPQW
	 IHvS5MMimuFmMlQL97wQGee83VJ7PIZ0rCB9BW+ukT3TihwNM0K8LjJpeCRqiUu40N
	 AAOkxMZy0ocfDu2q/JiEwuUTQy51d0xvdWfLxVudduxs6LeuvL7uwdCDHJuLtUJMUp
	 bHGX8dpzn0b9e+rOVjmG3oTKpwIDm2R/+0bEn1myv4XH8nbuxJitkbdasjTwVObiaL
	 YtklHL4j4lvrSiGoYTtQ5MEyOahAy29SuIIDnew4IEFc6PV2Hrrdn2EcFtaJwDiM1G
	 ihi05PdmV5STQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65F98C4708E
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167296928740.15639.13762781142948339517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2148e191cd258e6eb87d220bb3c4e360b64f46c0384213af3af5681d838fbb80
Date: Fri, 06 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672969287
