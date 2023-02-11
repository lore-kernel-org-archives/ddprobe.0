Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 614952F3F
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:04:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F03CFC433D2
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676156646;
	bh=41JLyz2WYbOIrlqangoIcpKcVorkJ78tpauEZsRTuE4=;
	h=To:Subject:From:Date:From;
	b=FNa1jRh0k9hkDDI/bsUH/fy2cjYUQaERu7JlXqKZnDhz6ca5DaQp52kJtFTmHeq/y
	 ylUVzYYCMHulUya049R1s7xkC8o3hbh32GtZWeeXPunlbSICKA5HLZhTGvGoVQ7Owz
	 718NuzMvXNybb4PzXzvdGoQlKUFKwAtr2D60qGydnA+HnUvXQgDCs5w+7ECnrV2hRw
	 1vTe+d+1mAbr4w7tPAlH5e5r//TKmA/EsSzkm5MgjcyU6NP3NiM6e3K8ui3ngRABWF
	 hKAvNittqdcN8Hce2MNIB2wJ8g/Aws+x9kiRnfgGCYGCNmLN2X5QHxnA66/s4ViHY7
	 U1VaVWIq9YIpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9D1DC636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 23:04:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167615664581.5081.1190732333455023389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c99a80e96857275abea34be1a50512edcbd45f3095f5d2a53e5032e371ce9a2
Date: Sat, 11 Feb 2023 23:04:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676156645
