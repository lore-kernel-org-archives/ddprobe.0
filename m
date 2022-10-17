Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A6D7F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 21:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 737C9C433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 21:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666041653;
	bh=L2lMPcVJzUEoItQVju4LA0y6NV4uaGTwNKhuHuXcpMQ=;
	h=To:Subject:From:Date:From;
	b=EwD4xD9THUrrr5sYvmm752K2/eqGJuuV62EAFr9hm4R6jAEweq35VNW0HFE+vamrh
	 zMIVlgTkxDDzc979fRhlHC6RxEldxPmMkLE+DG7N+F8aDyGK0gWZHkjqdTe1FXzkCx
	 Gp7hy7vPKLICT+7a4G/Wtg1q9HHqzpkbrPmg4fkEl9FwH0NcTW2u7C3/rOx6QekYoV
	 YeQZ2ggdy00oMU8egEkJqpJ5yuBNbuOc1QejxUem1o9ndO3S1l/68assd5ckasUzLd
	 eYg88zW/91BIK1M6hhU3DtBOcPn9F69PJ9lagS+tNM5KRJ/kf7v92yNnygIf18LrHO
	 6MXkfbp8UKN8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5456DC4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 21:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166604165333.23113.1434606075977061870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3d1117cde401bd745d2f772be50d0207ebd837d33ad4384c75ecda7b8572204
Date: Mon, 17 Oct 2022 21:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666041653
