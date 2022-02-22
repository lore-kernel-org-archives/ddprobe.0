Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E1B729A4
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 12:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645533685;
	h=To:Subject:From:Message-Id:Date;
	bh=JhVJ+s3j1cNY3eBpI/JLLd2zRgBSynxZghYUER7T+LI=;
	b=PL/kSmtido4VNyAIbHHT5+rEkEBoIkG48YI1wHvuwplX4Kr9budJSBTP04ER7Jdc
	c7tRhRCtA6a8aLwl1xXY/TBiAi7OauhNwviGTUI6DAk1HZWUXZxufNlWaM0EFK/UV06
	l5KxsYlP7Sp3j5PKYQZK5lkr9dE3R+fwKLou/1C0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645533685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JhVJ+s3j1cNY3eBpI/JLLd2zRgBSynxZghYUER7T+LI=;
	b=QhX6v0T1lnGxJKh3iX13/LaWuMYjX8QB1RfWLZKHbZu08OrGQP4wMFwhfSnxKns8
	3fyznJWJEgQzAKsJAXm7FRYYgY+nTf7kzKypriMgAbQuO015se6T+yVMfO/FZpG7QuB
	pxttw8+nuXxm6wJEfKZq1kK+v4bw6R0AcYvl3qGs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2173644e-6f6c84c1-532c-4e65-9c13-2406c74110f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1518f04fee0cbce6cfa1a6be7b06aaec80f5e843536520f71eef3235a4881746
Date: Tue, 22 Feb 2022 12:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645533684
