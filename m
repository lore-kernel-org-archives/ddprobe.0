Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAFC5EA2
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 750ABC433D6
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662803454;
	bh=mwzx5zikJqwdo9Coqx6SlHDLbPgIhpKsLyyv8A3IgQk=;
	h=To:Subject:From:Date:From;
	b=DVP64CzUcIU17qtZBEQnbp/bbDJgjnHgelHiZNJ9S/ZJEClzj9OpdmnHrZ75mqgHW
	 yq43VN7kP6+KkI3hO8obTfPHNr7h/enHDaIwRaWt0xHqeQhbsrW5rOB2Ctp7GMsxOX
	 XVeTd+eGLv/kjYzPZev191QegEo5s4KJKq9D/58YJAJL8msDHRorwsveVo2+ad62nl
	 vTUBQw6P+9R48/97B21OUf0pPLP/JVXw40V6vkKaqsDM4sYxF1RtK8ebdwFaMMrkl1
	 KW4jvCRvHIueQFLx66nl7x8TMf64HFD9MBlyYLoibOn3J9lno2NNoDdRYmOM12+8hU
	 oKaaKQweMKVmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BD46ECAAD5
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 09:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166280345335.14154.6810176900322875191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da94678e85b3e0366a936d41aea672c3a65c4386d3c00872375fa92b4cb72ca
Date: Sat, 10 Sep 2022 09:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662803453
