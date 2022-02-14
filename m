Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C287BA2C
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 17:00:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644858056;
	h=To:Subject:From:Message-Id:Date;
	bh=EboNbHFzL2PLF/kcEmtlUAdGBZ2mQwUqeJN3MraHSz8=;
	b=bMN6FYNBSgTudTUMgvfnzhPODJIHvfK2YAN8W0hNnB1U8EEEBcfbSzU2/G/QILqB
	Iisy5Ux4sHPbyT2lR2bWDu0J1Jw3O8hONJ2CABYagqWFC45sTxsOQVnsJI4QSrBwtlF
	BFidU668MWj6Qs0zQzQwo3srKYCsIkOyLJpylWzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644858056;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EboNbHFzL2PLF/kcEmtlUAdGBZ2mQwUqeJN3MraHSz8=;
	b=JvvM/7D4aROgE6PZYkAl2jHJREWq1sHH4Er9ddTj6AQZTD2TZov6F8SNHIzWKOaA
	NC+ZBwgLr75ckHbY+RoR7mPc07D9IQAGUryrMJSYxHJAyZun5VVc2G9M33skM9HnTW7
	dCdW/x4naVqY44UGQWJFZz14jq4CBeKgjuV8BRig=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef92e1c3d-a3ff9c30-997c-4efc-a80c-5fb293d3516f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab84e7b780eac8cd65dd8a3e89aa686673c80b9be98e33b74aad65e8034f01fb
Date: Mon, 14 Feb 2022 17:00:55 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644858055
