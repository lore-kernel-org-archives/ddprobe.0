Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BDA3160
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645363584;
	h=To:Subject:From:Message-Id:Date;
	bh=uRn4MEuiXna9IaceQmHfy3LkkUeQ4JEIGG4V/Kw2S0Y=;
	b=hFpKUQwPKuYVOYFAVXGD0imhfHbIjVE5wBprj/L2JScStPHefEERMwc3ThXR9Xkp
	zl0nwtBPguR9hINOT1JmLcK3PSeyx/+uIje3miA3zRL3P8cjbfKJmC2dVjocZ2fO6dz
	d1KAzy2hx1s6zKu1Civ6g8HkXhHayjPIJlmazd2I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645363584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uRn4MEuiXna9IaceQmHfy3LkkUeQ4JEIGG4V/Kw2S0Y=;
	b=Coz0HtdS67uO8W/kzyFxjrdgo2bB86fUCC/aIbYMfuR/3pGeHcI1ewDWEYCfoOhu
	R8iN8Xd18mEnRVSyiSFn3dySnI2I2yUs2f7vWcLwI4ZgIfT+uB8ZDI9leeKGncmKyiZ
	2Cg2uPouIoQWoCGQs4g/5G3sM3/WZZ/kmjlzrIDc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f174fdf3d-6f7e64d8-760c-4c44-8552-c3c728419d4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3644a75052f5d0a4844744566a62a32d86fd8f83bba066bb7c978195f8e7a2fd
Date: Sun, 20 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645363584
