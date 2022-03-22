Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611AE7A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 02:26:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647915984;
	h=To:Subject:From:Message-Id:Date;
	bh=clEc96QHW4cDFhf7P6bhvCl0G1fPX0DrMyCUgRltDNE=;
	b=VJZ+2XZJF+rfk+i2cvCQJ2reMwKf/rivl9D+AuuYOKMxLzllNfzUbEgKEv0bR0kO
	RCjydZY5a9YVAYhS0ZLwj/R7a/5z7LsuGeUy5gSZ5qSvGHMTI3+SMkCvCW8fGTD/J5E
	KoQb/eCqE2iXya4q9FaUGmOurn4ZNlLuVGHQ71Bc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647915984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=clEc96QHW4cDFhf7P6bhvCl0G1fPX0DrMyCUgRltDNE=;
	b=EQSE3WD/Egw7dOWjhmq29AoW+uXyA46dL2lT2M4K42SjI8NTfIFJlJP2u4caSPmH
	q1EG67eBcAqdVq+woAiL5ADqA9XVJlgzu2Q2d92ENkN4f+FnFzLOYgwfy73bp7Zn3MV
	x8eSOS+qivo70fOXl9b4CeB8ngvzwEzQl4Ia0noc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faf72676a-122de723-d426-4704-87d3-93890e1505ff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef1bc8f7a1d557495617a0efb8a8fd007c9d20cf92a4c7ced5c6ccc96c956671
Date: Tue, 22 Mar 2022 02:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647915984
