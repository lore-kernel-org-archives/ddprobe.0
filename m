Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF2AA2CAB
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82727C433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671394287;
	bh=BHWr83PIWvAFX8JLUUy7dxxq6fWFT0gP6PJ6f1HGluU=;
	h=To:Subject:From:Date:From;
	b=Wtu/egqvT82kTLMJXtKhRcCcYymB3ZjoPlbEFsHywVQiQyzH4ifXxDUIiJn8e58zE
	 +OiSNx0XaIvW9s9N3evudptvLl8shAmsUuTkRqoN9H8gMNJLdX97r7EhxumrVZWEaJ
	 dpNVWOWZQC7mqKTJVrT/rE8N3ExQg7PyKiynF9KsRQY62ttHnec5dN4/0pFm+XEzmy
	 KtpSnJqg017MW0eEvFnttr7LBAZa3HrjN/ZAx55QvxysRbb5aNkDxBNtdqRNsTtmcX
	 wnjh0zREHLRZieroqJAVagkKwF49VMbmf7xvoFFK6dNhRhPlXDp3/7BE8AnUWcKeAB
	 XOar+E6T/ZBjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 632CFC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 20:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167139428738.31513.10005292871376491804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efb15aa2dd13cac3147f0f1cf2be0d611b6ca5ed6d5e3a832b9495cec4c46825
Date: Sun, 18 Dec 2022 20:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671394287
