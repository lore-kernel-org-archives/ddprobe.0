Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2877C20E8
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 00:40:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644626445;
	h=To:Subject:From:Message-Id:Date;
	bh=gt0pamIvPhm6dG3DpOHH+35/cMUZOuVYTLtMeFutaN4=;
	b=brIb2yntjD9FMdW57ToNOtCt6D2i+tViGgg7yFVB4lUvIpWzAIhWQ3abX2eM7qZg
	vpjXTbpUVFA7QO/gWZNqL7vsBQW5QSvNM5BHI1/JW0rNTVFMtue1B7YqLLQEwjZGTrd
	iSUOGY1pOCGOY/zR82/hCK3vDOypAzvddQvussCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644626445;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gt0pamIvPhm6dG3DpOHH+35/cMUZOuVYTLtMeFutaN4=;
	b=YSJVfK+wYH6+NEYkAxP97v6UeFr1G2CIcGN3lfxCjURbsYT7gEIPCGfa+sdfzifO
	PIOwwn4jOkeTGz+EZv23TrTFICL1+DboGjjCYMNkfTrGHESf/yvAMCubbUophH8bU/n
	mXld3hN4i9yZb+bOVlu4Obg05dAcZmMXd8YJS7QA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeb60036d-19172742-bf2c-4e45-9551-2a7436e09dc0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd1e286b55b97c467c78b50eb82968c1545d067a1485b0700fa9e14bf042ab0c
Date: Sat, 12 Feb 2022 00:40:45 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644626444
