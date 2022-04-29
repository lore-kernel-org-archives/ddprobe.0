Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5F67B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 02:26:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651199218;
	h=To:Subject:From:Message-Id:Date;
	bh=Tq8XssNOk4JHf7sgtOiG1A+SMCeS4OJQKahVLZGCr2c=;
	b=SRC4777LEMuN9hk1lOg+Me6asMglYW5Ykyr3udls7szbbjeOizbH64IYErA+/U4j
	yPcHXnOLfS1XRKUgfpTQ62pwOT+whhn4bsnTIoFjj6L8tepLt5y7uxxRWSZNNfgYtuL
	X4bC2pFCBNW8PoNgP3XBEI2CRGeMFpdsxG7T6Dog=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651199218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tq8XssNOk4JHf7sgtOiG1A+SMCeS4OJQKahVLZGCr2c=;
	b=kBmtqU6Rs+Q8LeX4G5eeHkmSK5vp6wdvE/gvdfF1HNrsKTlGYsPdIcx/5/xAM4ZA
	+Mvu9ZDdzS8a+kMqEXcYyZCFY+1upIajUmDzoo0uIpNX0rmLKeLp+xK2h67qcH+3fXs
	2E3/3JTQ6JLvOot3jfRHrsD8M/VfNlnulYw6ERlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018073249224-61b7fe10-42a5-46f8-b816-a19754ddb297-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66d8916a83efed5d064a913bd1b0167cf46f0c6652de02eec580766091ad578e
Date: Fri, 29 Apr 2022 02:26:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651199218
