Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 871331FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 11:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646564784;
	h=To:Subject:From:Message-Id:Date;
	bh=W32R04S2DwkS+5uo1lPKclGI4MQS7kQZT2ehRefqKXk=;
	b=d5AIcFJXS6Iz/+nfEjuoGr3VSZzwAOqkL4oiZnk6hRu6VENRjR4w5JeKbaCdkMR+
	Kd9PjdkjPKX86FyZLOnOeWBuCUph539Idue+xNiFF1v279E/mqWfef1ia59DYUz48DN
	psFE52JMR0tezTp6OOORF4avhy1Up2ujmK98OguI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646564784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W32R04S2DwkS+5uo1lPKclGI4MQS7kQZT2ehRefqKXk=;
	b=dDXYqyWbDEI3cf3a7HXwcptY3V0taTXdt4rZcNg6oceyuQKRVPdUbBI1IBXvKPnY
	13Vjx7zkKVFOUoObhzrIabhcwB0/faDSzc50SFQPX4KR0gaPQS88oVERamr7SzXWLcf
	n32oBqtNqIWzcRTBwwpC/+OHvkHauCKPkxG35FaA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ee8ba8e-38c58d21-0b8c-40b6-8a0f-88181736a313-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4e797724d3fb6e69b67741db5bbfbd0a159656493190757ea248e4e0441c1589
Date: Sun, 6 Mar 2022 11:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646564784
