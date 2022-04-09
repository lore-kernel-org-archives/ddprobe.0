Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3795D7E3
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 06:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649485798;
	h=To:Subject:From:Message-Id:Date;
	bh=DZu7rEXEISLg86k70j3paEPM00qkluGitAN7OMkeEow=;
	b=WAsGJ26skAdl7dpIQ8w3DzbouQ03rWl0tlKP9mHusdG6r/H/c+AvDZfKfeevMvzH
	qRPH9gQTD5poYRWUk9gxV+cxnxwO7sXD/02KuG0FuAnRooz0A6CFzonuK1vpg87Omik
	DAaMTmkjF2O4YHLw2MOXewV3kO5BJeMqDrVBRWjk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649485798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DZu7rEXEISLg86k70j3paEPM00qkluGitAN7OMkeEow=;
	b=gDL+OWi6jnrVzyHkK1W3UQuzN9O/nwl1kA5u5MVj5X4OgqnxVzMYFLvI2tqsuUek
	b9gWXZ3SgLmmMSERbail8dolKgLweeczD6zY0KFA73KkO2mHrHrWWuZYaCG7WVAasuR
	fC0Fl5eDXvmGMSXZ3U25EU2+zvW7Yl5ZMD9VXC8U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800d03db70-f3eb54e4-cd7f-4bb3-82a9-101f6f2b8fa3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b95a6530fc8d656d611ba465ae3f5c2b140f4773bc74c68968f1c1376dd3262
Date: Sat, 9 Apr 2022 06:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649485798
