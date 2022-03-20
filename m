Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82FE720E4
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 20:41:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647808886;
	h=To:Subject:From:Message-Id:Date;
	bh=CXABHf27FL4iikciuMFXa/8RalLB4YeSONONsFaUkzM=;
	b=gJJxDcdZpqwTMbR7r4gQQOgwqbHj42ZWHr2/2R43FMIHaOlWttRrjJ4eCqgnW3g7
	lLiU8u8Kfnwm/TN6tiwTXFw4w8t07h1plQ42VZTV/uY5PUwiSVbWyrsiPllhztN3Pxo
	cfPnsx4FTysFaqNOhNjqzuu3XCoZ8LkeB4BX3ZE0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647808885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CXABHf27FL4iikciuMFXa/8RalLB4YeSONONsFaUkzM=;
	b=Em62igniGFcHxhHm9vfn5MRKJdbUO1ZoU9jErssQdtPcK2Y33W4xBHmph+3T6hja
	R6y//zO17PsQXpa8gwnXWdHjLJZJGBKHcakGO8KSWN4q/LOi6FYae/XodrCAmjOTjgd
	/l+M0/1kWweNoVn9uVfWb3w7Lbh0ypvBU/bNbJNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa9103012-679c9d83-ccd4-47df-bab9-fb48b226344c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8ee970081240285c9250bef6b9a501538041f7355efdf1c229a763871d8e9dc2
Date: Sun, 20 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647808884
