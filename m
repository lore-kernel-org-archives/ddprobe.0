Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9D8A28FA
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86B86C433EF
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672152687;
	bh=wM08CxxEg/HBqHz/Erm5GD6wmYbwAztrFPYXEf1VxSw=;
	h=To:Subject:From:Date:From;
	b=Sf0XFg2pyvpfe8uwVch9eSNpMrKfasfjkSiyh8zzYPaK4ZB6HOK8/e1kEZTG90V5A
	 TbCmAvomq4fa4OQSDVDEzfBm+op2fH06p/C+5sp0/MXBI5CfKTprBOespF7sAKJ5VU
	 igJ4FCE20bZf2iLwPs18zoX5pVHfTUlY7AK/KSxDG2YZZ+QFdd5aX5JsscVgU23ZRL
	 kNEM9ZnOkTdc0rEpqkGcu/YuvnPmDJdatMDakwkq8mrK0YEc2Paym3U2bNyIuUMdz2
	 y6/NvyXfIBknKTtUwW/9v3LIK0JHEXNETbks3eZ5QaP0Ed8gK+TWQL7u7twnnLvUSt
	 rIwuBvBzNWllA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6ABEEC4332F
	for <ddprobe@lists.linux.dev>; Tue, 27 Dec 2022 14:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167215268743.13075.6607738602269406441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92e0bff2d5e1b143e4b7cf9eaa36ce48c3bdf9e83041644e9d5b994f43659e29
Date: Tue, 27 Dec 2022 14:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672152687
