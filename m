Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BAB7E
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 21:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654290299;
	h=To:Subject:From:Message-Id:Date;
	bh=G5zOIUHWjJ8+sq+b80TxuZ+xlMovVxfUY3oOKwZaUHc=;
	b=HvCmPBL5ErF9wZqyvbRFNbNUUXjxEwzbtrFSA12ONjNWyaUfr+roJNZ4CeK8wRzz
	uqzvmNMvE2p/aOJFNBZek993NhKb/JDLvE9/GaWr4wvtX/vGyYYZ7wWRtgMKEnEvlss
	9fIwo3qsbNBmE/oaQ4a143SY4bdVCLRDL9cfHJp4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654290299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G5zOIUHWjJ8+sq+b80TxuZ+xlMovVxfUY3oOKwZaUHc=;
	b=My/68/pjG8kUcRJi8WFvJngERX2i0myuWuKVX+w7SYz7oLimp9MPz2Ny6tD7LdIz
	EtLp+x/kk3dNjbCd1rWofWVsAjkfQ7OjqrkLJUTNyQO83XUoKyMKhtw77n8Rtx4c+2f
	rQe6zKfzrUA2SC/uJRo7oME7rZJi6p/oAN8PvjfY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812b62b988-94f92231-6380-4fc6-a9e8-4ab46427705b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9de17cccc1d4341d1dde6ff587c49e8e1c4d394c4f4cefc9b57c979a1bca2969
Date: Fri, 3 Jun 2022 21:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654290299
