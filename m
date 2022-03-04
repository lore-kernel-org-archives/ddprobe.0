Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758097C
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646427384;
	h=To:Subject:From:Message-Id:Date;
	bh=9X0VXA4goliJeeWOnGPVMyIT8qH3yz+vQMc12NP+Kuw=;
	b=JZ9FGgCT38rWDVvvawo4VfgLOq0zk+VnpJR1JAefTciKI0hzQtlG93yaI+3gWYee
	gqhbBLqXUhUbVba8BosNgsrvfK9q7pqpFM9d8/Q9ScI3Vp+cLj46MdqAU2XO1bvALgo
	h4u2CZtg9kTEGnl7aTF6j0oRQ5qCs26PHpajnI8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646427384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9X0VXA4goliJeeWOnGPVMyIT8qH3yz+vQMc12NP+Kuw=;
	b=B89l00Ct7++FK5V7Qoq1rcDWB/SpvRpMN1Ld3OA/Alr0ooLXz1joYVSSz7z+viBy
	RTipPWYWFucBFJEJHy+8e09Qr7CmHslOu717E4kPKwK+Oxtg1XNEiVly7vbR+FBoDMZ
	WN6y3/3BpsnAq1raEUKUFkiUe16f6m8XMVqL49h4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f56b82bd4-b13f233a-0eaf-44cc-a8bd-903ee8924e4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a51bd0ae276186b3726dc7a141b5d040da45c699329f02e0a0f9fdbf576512ce
Date: Fri, 4 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646427384
