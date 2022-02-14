Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C404BA28
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 16:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644855610;
	h=To:Subject:From:Message-Id:Date;
	bh=OuX4/3DkATgsaEl72jDN306OVmH/3vil4u31h728Nl0=;
	b=KkFoUsEH1oR37wuUsPFVqWk1xfQvpTVc1vRozUqX76gsUbn4FkHjeXipLVd3s/qu
	YNV3cnc1DZwavD+OgcY6YuMgIqr+pRsN6DXANvtsCOtLPDTzTLx7zmE9fIWREgiZw1C
	09nO9xvSeaC4wTFiSVQti+onDKi04pvpdgKprxVQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644855610;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OuX4/3DkATgsaEl72jDN306OVmH/3vil4u31h728Nl0=;
	b=inbWe1cRJE8zqnv+TZqQrBIhJNwN/ysRyOARtLksmdXVqtjkMkoB2olRhsfyJGzn
	azMwn0dwmXyh1eOJSBDKVTbzINpCKFj35lybVy7H7ukugWZ4WF7Z5LRDlsdL3fJMqGF
	CU9i/TkyAlKXsM20i6yTOfYqEW9yjz0sVRcs1r/I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef908ca79-c75d39f9-bcf9-4c92-b999-5beb4ac91457-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 07a63c2ddcf192ed046d4594ea92c77670e21197360991214d643d079e84b6b9
Date: Mon, 14 Feb 2022 16:20:10 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644855609
