Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 682C529A2
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 18:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652209019;
	h=To:Subject:From:Message-Id:Date;
	bh=9IRA3IOrh/7PTBH8fltS8LwSO31jMToB3IOxjJb14pY=;
	b=L+/J/It3NMsmSdnDyUpJ6fyIGWdwWmFVTELBbWfsmIuEo2srXwa6bC5vsol9yo5l
	/UAS7nzv5Z2WDugG68Iwht4TsPbfbThPjdyw7ipRg24sRb2RaBlovVPICxmGbAulWZQ
	pA/KWlYWJ0so6YSyXc4cbBgbpmOPjfExq2D+FTEc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652209019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9IRA3IOrh/7PTBH8fltS8LwSO31jMToB3IOxjJb14pY=;
	b=fgKPkJHbVmwjusqea6gTAp7pcF+WIJgS3q+JMBfkMWwRof7gubj6phn5PSFi9y4J
	Mu7UfjX7fpl9xUF5PD2lsnloZlkNYeMqbpDDl8lcWri605NHLEbTH4gDizI/V7Kj4OI
	f/9BQCj+9ibvVn1VJ0hM3cCtT7Y8zZrp30nLtPnM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180af54e978-69ee95c9-c7d6-4212-a894-87d3cb259ff0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c81fa3bcd1226f2bc0b2c6034e2f6dffe932659099e294c51a3479dc0f34cdc0
Date: Tue, 10 May 2022 18:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652209019
