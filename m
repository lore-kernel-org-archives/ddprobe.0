Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B13776457
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 22:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647901284;
	h=To:Subject:From:Message-Id:Date;
	bh=V0aUpdKX5sC2Z5YAr68MN7uX67C542VrOH5a+xOzi2g=;
	b=Z1oPiBzA6ThK1u42ytSBfTuIUKLiuVs290izJMQH+2rJr9whdyZc8KDa/yuOYAeD
	luPGud3wJweNX4tERWwghfdKp4UrbgpdTIBdZ4yZZWIBudL+lg2gh4QxBTNRHpzbVpi
	O8tBaWdkNVUeLo1QFbFk/MGUvZd3mSZUc7Y2Tz3U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647901284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V0aUpdKX5sC2Z5YAr68MN7uX67C542VrOH5a+xOzi2g=;
	b=Eo+bLGM9v19i3DcDWpKXoLkNtGWhSBWgH9GxQj3f6wlR3iHpyCPalsovCCk7DQGS
	km5XwiUwErkMxIlsK2Z5fwmbp7eCiXw9MfxT6A3Rfwut7p/DY3xif5mVLuc3PzF0EBa
	dcU9fAbwEF4h7DWJYN32XkzfFZzd02bbR+lFZfFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae921974-448b2911-0a8b-48f8-89e6-d0ca3aca2fd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e650483a09632c8c601937bd700f343dc5f94209e993911e1700faa16ad76ce
Date: Mon, 21 Mar 2022 22:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647901284
