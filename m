Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C042D1860
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EB0DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669188654;
	bh=5Nu4aaGf+1zz1Zm3Napt0TN2gVCA0xKwr0GTq2LKYnw=;
	h=To:Subject:From:Date:From;
	b=I537QD3Sver+o92Q9GOMhy6d35SgjmerrsNNlsOvAFd4LatQ/1fTc9JTYeD5CzF4y
	 ED6yYyU3LJad2xyWjABUijk1D+1lRUnXjuJWk/vMLuvShZzUR6lPT6s9ca74p5V2NP
	 AHN+GKpc5/4+A5GuJTW7hFbmeqTl90UKi7K5OM+eKv3Yctf1OZSSOztEBqDjrF6pg2
	 PJ0GmAwsT/y6JLjZOpkzbJdhJLwM5/aUXrLJwqw7y+cJBkHTVj4f07K2NocK1v0BSE
	 3O567HglYA1FkC8KtoV2jmKZVE3ArVVXNRYJUo/mXE9E/OfRf5C1jkYf0rOdkjNbz6
	 kybGmrQxhrp4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56756C4332F
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166918865434.1180.12985036480592218031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45952401b887d5cdde8af98d421e17996be2607e9e5963ac89143ecede007003
Date: Wed, 23 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669188654
