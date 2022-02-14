Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D9AA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867365;
	h=To:Subject:From:Message-Id:Date;
	bh=4JDlfghXPOXOc/ZPn0v6Vxj/YNRP5i+pwHoZkFhFPQc=;
	b=aHJM0VRehuuRjiKvtgdL+jQMykxIcySgJ1+Z+T8rTXoAVlgOYCppXflC2cwiNbhq
	7SS1vGwpwAeqBimvB2TF9ciZ/KWxr72Ja5slSU9albjVEkagKY5qggJjuR7MbgliT4l
	l1cpqHGnZ8jskAehUON32kN5CqXuSsRIvvy102AI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867365;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4JDlfghXPOXOc/ZPn0v6Vxj/YNRP5i+pwHoZkFhFPQc=;
	b=EbKDrb8UjZawpsn4uq/GJJXFIgvs/zZqcax/SXbijl2mEstRKQJ6io4LRUT9LjoJ
	k8+f7YeugaJlBSRzgOU7wGkY8XMZ04iNLIwwn0MDymR3UF5JrgxIO7g5+tk8kUFAKX+
	d+oenfmPbGxSbeL9N0nU1wXxRslnsuNnx1vnc1Ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9bc2780-988072af-12db-4d89-8a53-7a4cab0806b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f8810d40db873cfc3bc2f60163bad5d30aa9e21d69a1004b2370a00b0dba7d37
Date: Mon, 14 Feb 2022 19:36:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867364
