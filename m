Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0AEC6FA6
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wu5/YPs4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7876EC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704537496;
	bh=anQ4aCxYXC0+B2eJJsRcZ5WMWBZxHcu9BtmN7/UEejo=;
	h=To:Subject:From:Date:From;
	b=Wu5/YPs42pbz07Sd7jQwDHf0zoD9YGzvaPgiZyb3MHOGyK7VtGkrgFaShH4k87CER
	 h74LKeDj8CfSQgnr4CkXfLG0Sb+VvopxjcOWO5E1mn4fYK8aAX/HjCEn8wzVGLUZ6B
	 U5cpgGjh+SDSMAbMz1OnDSsQW+OAX/Jk2DlGB7eYF/LHDMPvokaEKfjmZ4/bFkMHkR
	 D6m3So3xKZgnwnl4GJ4lUuxRcLFonRhgRDvtqBF+0nqTe7eq1PH5BOqff96tc3edJv
	 jh/4VEeFYuOehKfJUjkwlpKAEO1PiizaWOaAhNeEjvpIHU0vxYhCvLa9I2DGDoyNMz
	 DIDdML92HyktQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BA39C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170453749636.4767.18133331898027517959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e227cf1ec5141beadde2329b20871ce14a8a55f7d270b0134e9c1144a9297c88
Date: Sat, 06 Jan 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704537496
