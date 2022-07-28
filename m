Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC2F7A
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659018652;
	h=To:Subject:From:Message-Id:Date;
	bh=fQf1Wzaqjo2ryJcVWETj+HK2SmeyPycrAXVCsARiPNQ=;
	b=T9SAEMv0CiHKCQNx27AGTMwDF8zFkj/+J6t5NHq6dGbtrB9aOA73Q5hIqZCbkyEV
	bBoz6WOJXCMJjOKZBLLJOz6Q80Pf8VVa9vDK9YRfB6PApdVQixFkUCmAlLjqhvZwZvj
	pUeIjifRVZWsz51WauBO08jgw+TGELXcuJN9oDKQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659018652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fQf1Wzaqjo2ryJcVWETj+HK2SmeyPycrAXVCsARiPNQ=;
	b=NExV6mKqenU1rlPwo4owfwYtpxAejs+B4QvvCrExMiIXELQ/IwTlM24wDOoB5tXn
	l2KR0Mif1bvERwtRXxRv5/9SwPusdjfOY26ddHcs3Fx8KiB2cL72e5IqGZKf5ERmyKa
	2Sq5XS09SCkpIB+JvogZeyrQN/d6sPy5iEO2URKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824537ab84-1b5eacee-83bc-4879-a0c4-4238e47cb588-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9dfb576903d27950b2a2e26381aa1112e8498612173d6225a3c2c6fb091d8d5
Date: Thu, 28 Jul 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659018652
