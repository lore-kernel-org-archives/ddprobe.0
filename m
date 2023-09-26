Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B0E8107B9
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 09:05:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03988C433C8
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 09:05:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695719109;
	bh=yAVxXDRBSJNB6pjXmWiMFo66k4GjoxRMh2BSn2CBxYk=;
	h=To:Subject:From:Date:From;
	b=DiS0Xf/tyaud3VeUzaSUzJMgf6mlfGtLQggQ2Fr1lxOjvg1rNdSMOcI5tAHpv2s/W
	 4eAPEl6/NVURvg8FML+YJ19W7L9UFTr952XIs0shNYxRta9QrJd6vbUpwvs4wBCiel
	 TmbjBTukqnZpEAistWO0h/G7Fip8CFwM2+irKtpryLXCx0NrEcUn0aaGiUFym694zy
	 L1KD8W/ielpOo7wjmW6DDWw7z8nC16+lVMHXEhTK9ha+KeH7kJ7nNLda4X84l1cZHK
	 W+6WOTHrY/m/oIgpgKKwBXV1W29IPG8P/8orpuuWIW6BsDUlGd4nwYI6aRau49Drs7
	 0f0hl+iCtbnjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE392E7D26A
	for <ddprobe@lists.linux.dev>; Tue, 26 Sep 2023 09:05:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169571910881.19668.12374203112716461136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 269aeb8a3aa7cac1d32063fd5a3e46f2fbdfec0eb9b7880ff0072b9785670ca2
Date: Tue, 26 Sep 2023 09:05:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695719108
