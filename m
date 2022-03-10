Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 928E55A38
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 21:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646947584;
	h=To:Subject:From:Message-Id:Date;
	bh=IDGqTpsGZirod5blwJyqBTBd4q7rGm1EDYXX98B5aKQ=;
	b=jIqQddpFb/on/FtHscAyvnJGQ0FQosm1fGTVGsl/mmqI0VCwFqEsfMZBE+2qBXPi
	8ULug9C5JYooy1XNi+8vOOTQsuUreEJnPjb2MdmGmvpwxMBRpHV2LlhdMSKpUWwsDL9
	+1GqyFytYnPAwfSq7IqzmBfSOsXusgooFoC2/5aw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646947584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IDGqTpsGZirod5blwJyqBTBd4q7rGm1EDYXX98B5aKQ=;
	b=TwJe7Dwshq6yvqM8BRYZl1iZbqXch/kwOQ8IBw7N3t2rCxImmizvdmEqpMoPXk+g
	fnWKmjqJ7gLf92g2A8ghZ8gf9eNId/yj0a3WufGYRpSiIDZIVpTcE1TucYjByoSR5bf
	jovIwuPCpQcvFnjcUUENvyRJ2raheogNnu3ytb/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75b9cb0a-fa30cddf-5f78-45e3-8918-d67def23dbf0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f3d45d1ca258b53a20b14a5671045077722c3e0a8725e0903d57227464908cd4
Date: Thu, 10 Mar 2022 21:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646947584
