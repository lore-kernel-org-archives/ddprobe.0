Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 535167A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 09:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647768084;
	h=To:Subject:From:Message-Id:Date;
	bh=LNuZw5yL2ke8doNmow9AL22DYewsnAGd80ZHhMAPOzw=;
	b=GHAj0iTIq1SAXscS0dX9s7klFl662gien1X6SMKwqRC/n/h6rXmZfhb9c2T/97CB
	hyX/1pPMrZ5KodKQTySeYtrBOeE/yeduVj+Px3ct9u0AsD6R8khU6SBLUg+rqtlsH19
	FA/nwTpO2HHZpqIL8AQgjThzEWl8fDcO++2XbEJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647768084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LNuZw5yL2ke8doNmow9AL22DYewsnAGd80ZHhMAPOzw=;
	b=TzemwtY98WAR/1iJO5wxJ6g7RMbabVSZSdEefAE4xUCgnI2PtLnkUm7Oeh0UvOgW
	udpcJ8HxGilhBXIQpD8RAXIsHG/6fJcpXgGkhWZMMWA3b6hwwYsD8rKXLSc4/x9NU9r
	dI1jNGmSAVNr7V+vkOlxS+fPRevJpJI2H7lD4HH8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa6a1a0f0-85ba482b-94c0-4422-8bc6-f88f86efccc3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3116ef69dc5e1b75f6a1b4981053ab7ac5367db2d8156e6b6553a0aab4749b12
Date: Sun, 20 Mar 2022 09:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647768084
