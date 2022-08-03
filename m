Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE0E62C
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659517252;
	h=To:Subject:From:Message-Id:Date;
	bh=zjJI352RNTFiEgD1gUD235z2NilBE9KG8ZD7EVey0ag=;
	b=G9+4qkACduDtL9YheyruV+SjVK6tz6/byykZhfsv+ubXZsPIUW4bE/w/pcoDgn/L
	tfqsme6+tA6R+Qr6VMDNaqlu1D4Gn22rpVsLbk8g/oqCLsYamiiOQspzKtWeIjLpDNN
	IIjj9bVD1vOKl2lRIn0P1hzDwqcuSrYl5upOcy3Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659517252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zjJI352RNTFiEgD1gUD235z2NilBE9KG8ZD7EVey0ag=;
	b=RLW0YZZ9vdpPAk0gpTVtwRcBnZMUBxN+wWog0dGFwEE7MBYX0RyhXFY4Mnf4rXVP
	AYCpsWAyEF0s5fc5XTYUtOjNwUGUnlevKaDf3Ly8ug7fKo89nXsqYASpP2RXvcvDOGo
	rCNWy0Ztr+4iqCHWummXoTM4RryIskLtje4CdfVw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018262efb3f3-df8a9c82-cc20-4a4d-96dd-b45efe96c2f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c80487abf10a7859375808dd2a090b5b7a61bd7e95aece69dd588e89e561045
Date: Wed, 3 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659517252
