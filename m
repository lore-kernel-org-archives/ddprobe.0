Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD93D4C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B910C433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661551852;
	bh=hq2q0hlqkD9MoWxe51sVWYqMPntSs+EFlVLrGJIwAhQ=;
	h=To:Subject:From:Date:From;
	b=AA20mgG+w35wEN90p8Eh3oyg32wpR0k5AEi3/EtMLsmN3PpB6OfnhYurJDCfL0ZbG
	 uKuKsulI3i5B5okmAxKZqtD1js7amEPKfTMkk6pQIQicmqtXfHlOKmmnZ0wdhZSYuo
	 nNB3ExbfCjinTRHucNS0OtA6Q94VH6d5uRMX8vjlGswNCOdQfLtTcUAe7eZa33CyVa
	 NAQzgpGFAdOQiPc7ZImNxXssdhvT3k15t6Z9J0V96vM+a/Jz4ObjdEUfVLT08z6YAO
	 raeSW9kEBtp1d54ZssR+NieqYLPrEa7wOG8xE1CmNYMpfEyxU/hOeXlZfVyf77kDCa
	 VMaqS3zsnxXiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6164CC0502C
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 22:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155185239.1089.14733883226802846622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2604327f6ea641ef82bd9166b5a605f855f83da73027512fd6cfcdbfc971176
Date: Fri, 26 Aug 2022 22:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661551852
