Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61A1617EC
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eZNJotIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CE3C433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696669628;
	bh=RuSdabkZrEvWFaKca1nyYQDdOHCsQ9M4PIQ4ZpxrgtA=;
	h=To:Subject:From:Date:From;
	b=eZNJotIH9mq7/CdUzmbZBtMU78L9kD/nvAEe04UCmcA+4v/+BbBR00+9ojcc7bn5F
	 HTZXb9/6C0O1xBLF49HFZ7tPs56ckiBgojYWnUvf0Rnbs8ejrJYSIT3PU15/EDdK5B
	 /d3PbGvGk9c6OS7MnEyz4MhhM6ZnvPnDe4ItVIg4oweBU6VIn5HBFcVth4vguh66wU
	 63e4yvV1KBjtnvpntwmac3hjfD8DaG3XiV327fBuyTOXjvJAz41+G+2BPeYzajoDYe
	 JeVykWqyGCefKIkytJiXJsDyeEcOnsaqnMNztE+msAjCkSI0yxpi2wiIrnBFGkJb02
	 Jn5kfgIhi8qng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E7E95A61
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 09:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666962868.9742.8314080393388433710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17c458e6ce12f1b23593d7d430941dab277b11e41201f822adf589a1a78290f2
Date: Sat, 07 Oct 2023 09:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696669628
