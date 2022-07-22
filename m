Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46C0E15A5
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658463412;
	h=To:Subject:From:Message-Id:Date;
	bh=v7gF0TdAdCVy30gWep3BhyhuuLKH3CJX3nWv8pznuzo=;
	b=JoOXW9cBY5zHhtJ+Os/8iOcpCgEMviiKiQpZ29WU+kOvluJp2I9rdxNtZsODbyvr
	Pth4G8D74juDS4O5sOhoUzY5w4akMpI1KQ6zX+iiEpYpv4jkxjeOCRwve20xVECRrCs
	/crcLIY8Cd0do7fCrxE9vVOMtosZMlgPVx0rKxIg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658463412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v7gF0TdAdCVy30gWep3BhyhuuLKH3CJX3nWv8pznuzo=;
	b=kjpZyFxpu8DfGqiAD+9JRkyOFIeSuZyLjdkTHruTwolcmv6s0E3oaajuzsURk47M
	XHR6vYw4Gmm/42OyDGW7gV/csiYUkhYwOcBdq1bHz2vqNglZLDGxZgyv9P9LS6JCxKb
	IzekdsBHRuRsw7UzsPbl1IpIeyagoL5E24JepwUk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182241f6057-78a6032c-f333-4205-af2e-aca728327213-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9dfd88a245c4d9f152afd93e0c1ced73878046a69e17e89866dff9682e6bfdaa
Date: Fri, 22 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658463412
