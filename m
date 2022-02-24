Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEE11386
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 07:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645687285;
	h=To:Subject:From:Message-Id:Date;
	bh=p8N6Q+sVhfsHdNauU88mm6BPRzgdeYuXYImXl5wEI78=;
	b=WzAeG9BDlPIMThRcr/55KyNuXdvmbVv6PcZE3v4fTsxdXXysKguBQlGE1S0w1VUB
	NQ2ftmqW/lStzuWMphnwaTrmjUwGLRgQIfxhlokinSoS22/aQ3PxiP/Q3p7OPDRMsC4
	7Jh/256+/bN7ST21KVAdz+n8WPoIAbqA7u2JETD4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645687285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=p8N6Q+sVhfsHdNauU88mm6BPRzgdeYuXYImXl5wEI78=;
	b=ihxrkXmdte3MaP8cHXr6VE+hkKISyhPn73N0cOVQlEDe4BazKo8iH5HPpArHHf+F
	l0ISx+nJ82XUBwDqabaUjlmlEseKMjf/9TA4kDPl3n6HZEc4k3sJWzAz1KSq5R3CY9l
	7QNKidtu1M0QsrEyWOUz8P5aJHbJv85g999LcbQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2a9b2449-c86a7700-e1c9-4ae0-9240-24603f5ac5c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 01308d207dbda8393aef66cfa8835574d605f91e3a47cd495addd10fe2bbe0a2
Date: Thu, 24 Feb 2022 07:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645687284
