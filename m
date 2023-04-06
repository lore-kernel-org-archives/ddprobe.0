Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3564ED53E
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA72CC433D2
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680819485;
	bh=Ucfvx0k7v+OGIWAvjkJFSUF+i0LsuVKNXPlO95E+37s=;
	h=To:Subject:From:Date:From;
	b=kI0ohlaJ9QTbz9T/bqCRsMMyrnAERbr7Rn0fnBKmwsGKDxA/O+YIZviwbGjyXxlLa
	 fEOADWWRHSbQjg6kg6xJSTO5AKcbJg91DznF8eTJasVMD1yhSooFwph2tmK1ly3y+C
	 iOEj8LjMWYScEFn8ZzXYOtoIDaLioTVQWYDYeCkeOUlsUMF0vR6raD+POP7abyz9OS
	 +XtiJjc9+w9Pj/GKfaaYVIZsAiwS22scd5xzuk1QxHePeCohsmmcRUSjHSZmFet9sv
	 MWxLuphoxcvk4o6VtBYtBIcYm68oCpC93b5CYf0Uj5EAT3WMYB7e8g61wJPLROz3Mn
	 igr/g9hRITTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDF02C76196
	for <ddprobe@lists.linux.dev>; Thu,  6 Apr 2023 22:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168081948576.24135.17499858650950426675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a24ef11a5e2e1e85c1600c44b13e60ed12edc1de5b588cb74644ce0c68afb9
Date: Thu, 06 Apr 2023 22:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680819485
