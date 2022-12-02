Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDD977B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68F56C433D7
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669978254;
	bh=s7OrkNLsEvRkdtIXGVhDLKlRNX3I9mvweSn8WvuDeVQ=;
	h=To:Subject:From:Date:From;
	b=tQyvFRkLb/VWTxrJsTwg8cgVqG1Bb47sj3kKL4gN/zPUvamGL3tvqV5RC8N+OBsuR
	 9NLk7ve4tXtguz1VTFvx+ZTuGw9YPEfariOyX5guHKTMnBHOEvWknAaJ289mxw6SIX
	 WVNFfhhKjHfKGZDuATa+snSDlFJNwlLWQzRYMQ9hZy5ComoUxfiqLjXeCejAW6G6y+
	 W11qkM4ZhfYM2mC/3j9sVgeQc7hDR5CvvnXz91ljNs1fi8LEcDHy112BvcCiHhFW+i
	 MlaX6U0svUuq5Cyg4oCfFlCocyc5UgO3xSjcZTieAvMOWlkjssfJAxpfz5gNErcPnO
	 XtVkrW9zL2ahg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50D79C4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 10:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166997825432.4545.8000897812880923243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05f81ab36e8b1491ca6d0165e51677701effad859be6eb7be82835d24403c900
Date: Fri, 02 Dec 2022 10:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669978254
