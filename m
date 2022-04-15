Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE977B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 18:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650046318;
	h=To:Subject:From:Message-Id:Date;
	bh=+TX+V+guSvsY92MxU/KZcKpPMHr3Udumi2tAMxtAI64=;
	b=bRV9fJh9bENCSbiVWP+ZYFQtdYT7Wfs2DCTglzSmmiRfWUkyZDP7X7WhBwBAkiI7
	tI+OCJiWeYuw5/VI5sxyvQ313EOZgw+tNh9FBuBqBmn/I5yWFNkxhTj7iH390pFCGe6
	j7jM87TWzeauTAQeYwm45Hfy1dcqZ/2r61rponHY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650046318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+TX+V+guSvsY92MxU/KZcKpPMHr3Udumi2tAMxtAI64=;
	b=WxG0edpGRfLnD9HBK9+D9KQ4ia5W9/y/n+tq/PUfCEyv59TBuAsP3hwUSH+emBGC
	0prHHzjqyFerwR6zgx334kp6sQAhGcQYLs3DWxMikyEpL+GDJ0gihi4wCuXZBuBTSQB
	KdtzM2Rxt2pFun4OZDnIEl2cTSqKMVegfBE/NnLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802e6cb687-8e5f081c-bb06-43a0-b9a7-8004e77fac1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cadc22c6006b244f3fc5793105e58e80e14121bdc06d2d7da04c5bb87d4ce0a
Date: Fri, 15 Apr 2022 18:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650046318
