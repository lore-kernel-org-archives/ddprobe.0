Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8676AA2
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AB06C433C1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663611653;
	bh=Ozb4l3tKgTWSdMPDbn5/T+1Vo0ECJFyf9DWsvCMU2C8=;
	h=To:Subject:From:Date:From;
	b=GilctIZh1o3L2bbqwi+PXXZGZIpFVTxGx1MfGDgJg8KU80oWO2wT7cWxiWv3vZ9q/
	 Q/NqiTV5KDAzzOGmjMIxLwMAPRbQcqdLvz5xingllpUDBTLTxr8viS2/glh57Z7LxY
	 F1pLMgjku3g4mL6qhRUDwe1S6fslnwpY/3G+2A+IzYsOwlVIco1UlJNWZKWU4v/pFb
	 H23t85+c93QB44ySN581eh7Ez/+BouzMFWdzwZQdfgwp7znX1h553zv7uY6AVEZDc0
	 0s+mk0q/f52M8wNmdlWSxojv0LlizWUGGEqkJIl1Wq7V83ioS/DeVSlsWYeRE8nU1a
	 QBBVD/amEoMAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 540FEECAAD3
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 18:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166361165333.8535.5541064052523096430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ae8ba92a16d18f841706bb61c9dac4f20ac128693a36293dfc3a47698f770c
Date: Mon, 19 Sep 2022 18:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663611653
