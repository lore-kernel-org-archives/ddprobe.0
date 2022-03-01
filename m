Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A73AF7A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646097985;
	h=To:Subject:From:Message-Id:Date;
	bh=hM4a4wvImsLZTnhweABUdx7xeOF5eiTdfT8K2jkMBHA=;
	b=D+I0VgsYwG/8fE8f42IQi7UGsNIJK/tz5sll2BgFOMbbdj8fno8suIruqOVUrqGO
	kLaNYKojspummmD6qmCdA9ZtFm3jzf/5knLSHbO7BIbImpSyMpPs9Dm7x7sV/jLimds
	IsfGsBNjIfEBcqehdW8IMf+q6+qkKq0SRnEz84kM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646097985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hM4a4wvImsLZTnhweABUdx7xeOF5eiTdfT8K2jkMBHA=;
	b=NH+YIGe5Fhd9GBATSGeUxPrSuys/1+h9GBbX1LTJAnpD6/x7KtTdhZPqVbaaNj6j
	sQsY58RBEAgPDLrqfPnlv9PI0X31tLe8+VT9K+54HZcCQQZJtoKBYbZJv+f4BnWsTXP
	Gn4HQTGryoZ/UWTIXWzxu7IKnkDwL7pvXaxQZP+o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4315ecff-1822c3e0-3996-427b-82ed-695d75ba4ef7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e1376aa2f817d681ff5e4fc925dc70e78d14fb772f49e48a1eb8a983f3154ef
Date: Tue, 1 Mar 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646097984
