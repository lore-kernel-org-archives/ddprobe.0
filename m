Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1514A5C85
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 23:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658532412;
	h=To:Subject:From:Message-Id:Date;
	bh=96jSYsPh7RJBcVjGU86VknWlPEPjJe8/UDIZdd1JvrA=;
	b=LTAKxR1Ig3EV+LrOIFAHz2vbV3U76dDjD9gpRfivo8eitcNEqFHHyrLRW5KHRDFj
	jT1mBiyrHdrB66lolP4+QDPiYkZJi8VxnWSKwL5I96MYLCMrvVarnoMlAhylOL0kCLe
	EQi6Ssiug3vz73H3dZhdD/nraeQUCbC3f7CwPfFw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658532412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=96jSYsPh7RJBcVjGU86VknWlPEPjJe8/UDIZdd1JvrA=;
	b=AaEY3TyShgUMPayURQGofkaLwH+Ts/9Zk1kMlQOgpO3j+rmdZS4XXhc+L4Xy2HI9
	eRC2ELIKDA6iyrz8GW0hAmVhbfkQ8+qD80j4WMXqoZZVQXrlavqU/SlvhGZWNIK0+kz
	oKbc+GmOjx25IfnzDLuUb4xjpWKF4xjyR5HwrtuE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182283c3b76-612562a0-52bf-4686-a3b5-a0a3322f916d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69fb52d874afdaea97db4a08e85c9bd3f605e39af6dd86db7a73ac8e13c8a6e2
Date: Fri, 22 Jul 2022 23:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658532412
