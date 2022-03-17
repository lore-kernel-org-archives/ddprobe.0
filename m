Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEA2A2F36
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 01:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647481884;
	h=To:Subject:From:Message-Id:Date;
	bh=xu9sdMqjG8i6+71ccrHBLkfgt8dtZIyoJvNkAt1Y9Tc=;
	b=aJeePMOjKBuz/t07AYDRHUzCHkww/6UM6NiU6tnT1NlUlLD1cH6JIPg+OaZ28xIS
	qJHs/1rqPi5oGnSqI9VERPGZ4MVR0mGSQAo4h5gBthcyXk3usGu/d1mSbY8NVmYRzht
	FtdLqPqAnYVqYQoK3ybOJvVASJrXa1koAdhPTVoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647481884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xu9sdMqjG8i6+71ccrHBLkfgt8dtZIyoJvNkAt1Y9Tc=;
	b=W476J+2d4PaMr3OJ1G8V/0iDW3vm2u3dMVxXbFLkEfpa+/zokcFmpFa9fAEUvNSy
	Zq7H3MHfvARhIC1JCC5H8V8vxosYozkAfPychWwMNqKckMCprmM30SAZJaDapz5FR0e
	vEcCqy3nvR3uOrQV1T/DDLulUtKVXzbtgIFzEi0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f95929092-a1b4b260-c741-4e1f-b9a7-0138fb9d5ca8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff385e9e716569a28d9ad3f9b21782160e9cc86e404da387d3798f7110466b42
Date: Thu, 17 Mar 2022 01:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647481884
