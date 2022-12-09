Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2218802
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 84888C433EF
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670566887;
	bh=AW0ZcCspngf3puKHfNB4oVZ09D6BmaREt6Dq8vdAAM4=;
	h=To:Subject:From:Date:From;
	b=ZInc685gBpIJJWdeRazgCOKUs7ldjmwIEdZpIp9cEJiCmr8Jb6gUvwAqnn/CDHQVg
	 JRKnQIziN/2IhvmHFuh3iUyeXJZ8wS+p2xgQjrHljnC7q91rq1fa3oQgYChsmu0JNh
	 W5c/YhTL4/cmErVif0ip46ToKuIl4LJz8tjM9nZBqmbIUxKwwijyWvv8oNeXZK07Pf
	 yTWDwLMGgo9FSRTwGCoKWCv6oejSYGvBp5DbRtWzRXBzeU7XqaBLQhBoR9VJSwoJ2d
	 /eZjrg8AbRZsXS+0/ivwLAz99fDm5yYJCzmomTfkvgnSHUwQTzcHX0l5ePVoQkRh/F
	 5HZi+sefLvH+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64EAAC4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056688739.12788.9047157874422990643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: added49d4bff297884ed4e8aef972e593ac9fd2e89713bafddf2fb1efe7c3f94
Date: Fri, 09 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670566887
