Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E110A17EC
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660135252;
	h=To:Subject:From:Message-Id:Date;
	bh=Tuag9j7VNc38qcnRLSxwh4D7FFBBGSS9jrYh5zRoZFU=;
	b=YPrUV9kZdpyKJYk95tXTLhVBFj5msOg8/QebsiX8L2TG9VYP+8eOUCPCppp1cJID
	30aoWe24Rwxmutu3HdU399CjRQm7Ifw188hqg1zYttzDow3W3KbxDa+86MRiAmG0u7A
	UFNEBSNZrfSi+FoCULhuneSHhIDCCIBF5AaUox5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660135252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Tuag9j7VNc38qcnRLSxwh4D7FFBBGSS9jrYh5zRoZFU=;
	b=i/nSguUimJaWt33QPUKDxn2p/7VSGUOx821RXb4eFnWzu6mDawRG4HLaz5O/N9rf
	XowJhSLc+GTVMYFmbRqcn9PYKZ9kXtMdH/hg4Z26y9HeopzpcI2sDSSyzKtgzIVKpeh
	zX6IuAu0Fw9dw7zMsxvBa7E73v5q5sKuW8/Bp0RQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018287c5a23a-248afde3-99bf-4866-8b42-7724e2ba3245-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cdf366280655e0e59eb5d9c696a2b62560ebeb7afbdb2585427eced0026b0e2
Date: Wed, 10 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660135252
