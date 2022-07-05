Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 151A52F5A
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657019812;
	h=To:Subject:From:Message-Id:Date;
	bh=cEkvqYQrxZJsIuLsCmVEtG+WVA83pDpIyytytNo/+bY=;
	b=EYV+2rzNFGKUQDmXnDl8KMAx/v2QkkBKH3pXY8fI3d+1WbIN91XriraHvZhx3QBZ
	8zqS35zyd2/IwrvslH6DT+GjBy9Dg5UXL+3DKX5TjDIX/rcbk31bYdcY/I3wh9TO/Sz
	P63xphSqprg/YEFkbrGTx9s/uSU/aCeTlcNn4fHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657019812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cEkvqYQrxZJsIuLsCmVEtG+WVA83pDpIyytytNo/+bY=;
	b=Aty1Wh30KM9xeYWHnSNZFwcUDzBq4CJbKc4otA+7SCXDf/kxUmFxEBbdAOCyejwr
	y1dlfAkHuwOviw4KF8QnGZ0yOh4k+mGQs8G9Dv0IUVpN7M36folzFp2CmJk8yv0yukc
	ORysxIQHNTcpXNBRaY6G0KXk1LM/fM4341PxHwxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce13c9ba-2f3f85b6-4697-4a73-9cfa-92d7616bb00e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 62fe443d1c753c215a1a4c50c348d37c5e823d951659511d54e7a160eb8544e6
Date: Tue, 5 Jul 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657019812
