Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3DB33D3
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 14:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647786085;
	h=To:Subject:From:Message-Id:Date;
	bh=D2agYJW9TpJ7CosZYT0aofeaRa1uWE6i84xukkq7VuA=;
	b=WJIILLFOXZynTsjvMlzadM++XD75JIDM/Bi1w8JJpRBdf/75+fbS/HvKQfC7utjB
	HoInawxCXVBZSlcJErqNW4KRyQSdC35UDlTIzAl8t8lxQ1QzAPRWoSXAwrotNCHFC/4
	XXNMh5/RHd4EEEddSYCx0krbWYPvqKFdMtZSx4/Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647786085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D2agYJW9TpJ7CosZYT0aofeaRa1uWE6i84xukkq7VuA=;
	b=bR89HD4WVmZcAejaj/dnesnsK3WlZkuD/yE3+JgT7oB+w6GHvgPE1ZRLPkBAG5cW
	W0bgs2VhVJjZZzYMssKdNJOm8sFEnyu5fXoiOTMJIGbXB8YfwrEk/QWN8HhMh+b61WY
	zvoRAFFXjx3VIV0kXDKaUzB4Fp9/IEITr5Nl/tz4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa7b4497c-db8df85f-3e11-4891-bfb4-968f2af2a41e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 672e52eede6ef53ffce1ab7050e3fd901119312bd446fdbe95748ac93f4907fb
Date: Sun, 20 Mar 2022 14:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647786084
