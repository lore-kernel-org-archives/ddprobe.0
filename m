Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EAA18EB7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRjVf1vu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EA74C433C7
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702730896;
	bh=cxBreXm91CdRuVuIU6HhrZjjOfGtq85DTUIc5bjqOfk=;
	h=To:Subject:From:Date:From;
	b=ZRjVf1vu0oUehiwuGQod4z+HFXK4McQYf5p+TAINtnVLKys3dEs4eyffqcglz6HmV
	 /1TqU0z+jP71cJmKahmyugx+Y6NBeXHB8/FnBK604zaSMGqz8zy4yMHm5faKmRLddK
	 8jkm0iVr8SY+PJdHU5fc5CaMVglxGlH2zPnY8I4t9/SElDwwfrIFFqGWbYWnS7OON5
	 rXH1E5JZDuTlcDf4+basaRAnS00wOZSD9XlVkUlJdgvLfFNMNmFLPosH8Rqn2OpcbY
	 TAoMgy7Axp8oRQhVO9qSiq/LBY3UGPibMqtoBwm1KnQjn2NyVqfA/88Np5lBODDMbb
	 on5DDTwCS9eMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61E64C46CCD
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 12:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170273089636.2645.17708094044990790956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 534acf12004571845e88ea5b4120065b5cab517cf051a5bb024f8905dc0c5cbf
Date: Sat, 16 Dec 2023 12:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702730896
