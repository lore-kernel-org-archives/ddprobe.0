Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB007803
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 04:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DA99C433C1
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 04:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665893453;
	bh=euF7aIrcQRGNXJnnFtBoR0wbxi6TJjp7AP2xP0QiM5g=;
	h=To:Subject:From:Date:From;
	b=LcY7GuAng+Kf+BvzrGLXRdUxmsZaXJ0+XL8zKtsWjT9OGb0zlQ/2ZRVlCz1uXslqy
	 RNUkwdLnBJLpTjC7tdinGLuPrk5Afvf0AjLrc98lnk57nKddtb4gMjpulR8ORjJkVm
	 bwfO7cB99iXUcp3Fl9wPiV3ohXXMv6D1vlXxPQwj6OmdyHM6oOiCioSdU6gv246W/g
	 XdFNPdSoxwfG4FP/uvq8oa0KCsnwRMlMnXu27KJ1JdYAMuNUEi7nZDK4cR0AcRaunW
	 qXNL6jLDUj0wRVas0MOL5LJO20R/oi5Qg+U4wxvIQP4mXGCzN1urc4mdm/FcrOFsWf
	 EigiAvuP+wqwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51FC3C4332F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 04:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166589345332.11985.16320043170657329781.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4f4b0dc65df4f88387bb08c5c040b616a3c1755176a0255461104e5d3fc9c6
Date: Sun, 16 Oct 2022 04:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665893453
