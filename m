Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE86217C2
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74957C433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667959254;
	bh=w0YNXAUHRgeQp1jiltzJy8S2WXkNilGjV5VPMQ1pyrs=;
	h=To:Subject:From:Date:From;
	b=VyTFPbureLrF8c80fBPm2qLlCn6nnY+VNzm67XxKtHyxH4Um7vGqtda9W2nrITzd9
	 YrZI0txi2CQ76n1cY6q8Nq5vyf5yOPNwq25DVT+yIQlLYnALHM0ZKdvsZ/l5USCUHY
	 dBaQRilqFzQDbILYLwp28ASmVV8Yaft4p8pC68OPfqWoMUVcowsCYBW8DzgGdbvLsX
	 FODolVbvT0yG8VwNAv1fDTKFq/7bVkjRlEn0VJVBTbo/ZITQmuVdSPnK/5ki4d0/X+
	 EJIHVVPQApNrDiPMfmzB5E7Q2w1eWKytSYQ1o84ya7frVVCq8hbUxyXgQyr3Vybxq9
	 q2M6KfAmlRkfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA96C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 02:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166795925438.17877.11765046355267309255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5e868f4a779f3ee9c630b6587756b642a5f9c27623f2db6a13762012209a8c5
Date: Wed, 09 Nov 2022 02:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667959254
