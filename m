Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8992A3670
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 09:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645090285;
	h=To:Subject:From:Message-Id:Date;
	bh=vKMeTk6RNwJbr67SO4niXzHT26Aq+N21Gp91xeguiGU=;
	b=PF9qXHBRIa9EGEIiqLYad9CkYyg75m0VjMrjCrYbo/atHm46Bqtv7aiWyssGbNtt
	GLbBEebhgDcLZKf9gjjWxh2lebU9jkDOcJFtPi7rSlG9GMI9fgocnGW2/EE6Y9Y0JLF
	99XA56+pWwCJMCPcQV5J9DT+Kbu28mfed7B7TOZI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645090285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vKMeTk6RNwJbr67SO4niXzHT26Aq+N21Gp91xeguiGU=;
	b=dVzp0SlepiJHL3Ah1Narr6hGSjZgrXM7Xfh9tY3Ljq6rBL0nT7zcYglThMoTzLiA
	OBaw6so/qMyVn9hckfT2/iMWv5iLsdoTlcwQwmQkDk7dK88pyISoUIdQf4kGMKq7bxy
	uzk7U9y0gyqdV13YjnxxuRnpBsTjFgV2+GjujPiQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0705a4f8-51e31169-8e2b-4245-92fa-24912176f0c8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 59d9a833771648a2e087c2268a1acbe175a29af96db4955e1f802ff0057e66c8
Date: Thu, 17 Feb 2022 09:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645090284
