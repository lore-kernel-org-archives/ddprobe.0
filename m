Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86450DF6D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:32:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E704BC433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689982328;
	bh=kRHaA5pOixD6eGQkIDuxB903dUGZnag/gnpSAcNvIjw=;
	h=To:Subject:From:Date:From;
	b=ni+wc3pU6885zKQQYLZZ22+2Ks1WveAP/xMty0O+blUw3Gs/4g+3xsg6WeRq02gM6
	 /ezMLWkQnBIIYEjNrVJYa54ozfP7/tdVFfLzx2rmP3srPu/whE0bw6VbF9jQSovFZ5
	 8Io6pKknkLG4ysFbRsN7KmR2XhTJSV+HJICkGo30+oV1h+9/wzT5RIw3jxiA/ixvC5
	 UHfH0c4DUE/AnbKPsM26phthrAndGjbYh1LMQhJxGIa4zAkBg6t+D7rfflv3VTs+m0
	 GMvWxI15Vw/BQtmbI977jSOBC1q3agwm8UiFH1lal7bKm87nMRftbbHhroGZbwnBAo
	 RBTsY9eAXahxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5844EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 23:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168998232872.9147.677692680648392887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1b5f4bfd2211b7e3e9c87a217b2a8b1f6906f1bb7b495d3760e6d10ad15cf9
Date: Fri, 21 Jul 2023 23:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689982328
