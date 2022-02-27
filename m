Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62D1B7C
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 05:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645938984;
	h=To:Subject:From:Message-Id:Date;
	bh=CCczgo35vf7j8nsVIGe/mSF+XqIQTF2ocoy3gRukKGM=;
	b=mMumjuamKEJhSMgtaxiYgdTpUQMNeRu8vhn8z44NfVIyYt62vJ3mHMAF20x9DFAm
	rG8dkWeTWbgNUwgKH5sXiz3pQRazhZNc1Vhnrzz3LR/4WJjolXi1+jeH/pJ91IrIU9W
	xU1BAa+ds1leMB2yys7Q84rXq+KeHxbgzVaqlxxY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645938984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CCczgo35vf7j8nsVIGe/mSF+XqIQTF2ocoy3gRukKGM=;
	b=YXSKL5xvNPa8aDsHqylQl+Rf8Ph3y9uzDY2pfNyjuSmWFbvYGHw1RBoRWi551jHx
	f/1mgTbEfNOmN79EDuLQJwWwM4MlS7pclcuvlwQ5EDkODs/BVSmy4N9Xrwp4f1BSAvs
	C2dPwjHro9lHG3+ig9bEXnxNVdjcLdf6Z9Jb2+Z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f399bc731-5784c3ca-4888-4783-8fe9-84b1ecce5230-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1206007905f90f12ebb9e99e1354663480cc6961b4fe6cfd3a9e014722950ef
Date: Sun, 27 Feb 2022 05:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645938984
