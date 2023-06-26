Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C1B314A96
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE14DC433C8
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687810988;
	bh=HFNPTwa19thjgRylwhGg06a0DqbnMIRR0DA0yhL9k18=;
	h=To:Subject:From:Date:From;
	b=BBFCxqO1ydQJKHuyjFtkslp8to8iSof3waG/yvlHiIOsFSUincepjD1CcUn1dHVMe
	 EDaHTbL9bUBpqb8g6uweWJFfuvn953MlnWkZfAgvPPnlR575RyLspJmM3NF0p1mlBQ
	 dLqoWn0ho7riSTtrf7HjhKYRbQYDKwNP3RuhYIQmuDZpKAYdW8mC2uOnAWnAxTkVfb
	 GAK4jBjPa2cD28Zq5sg2sR5mkqH4+l2+DmvPTAxX3j2MMNbZBcDf6gqbbz1vp7/njL
	 U/uNKHP2VdXPIMouXq7nfHRGqsCcRKW1ialnfdZHJBCTAni0hLzOHIftpdFywlZZE8
	 dyA47s+A/x46w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB375EB64D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 20:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168781098869.2515.12117731578932938474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c141ba350b29047f9940bdac670fb44a8b1ad471949772139a00ed9b10e35742
Date: Mon, 26 Jun 2023 20:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687810988
