Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6669A1FAD
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 10:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646562084;
	h=To:Subject:From:Message-Id:Date;
	bh=+hZiiaFLxtPVb7KCmLM6QmejHhsQ07rLIEmSo3AbpuQ=;
	b=T8WtytbXjA/QKQ78qFdtz/OJFcZqLFxz0BFIRMUMzRJCzfpN1U5xdzw9ozJb1Hj8
	7yeMOZI5OnxMNvO3ZUaGaMngpoKKKUXdoU5x2ecKyLy/ireWBtCCSxgUnzDOYdHIgWm
	dCe7F4D3s1lrzotjenJ4GAFsltGxDw2m4axoku8o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646562084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+hZiiaFLxtPVb7KCmLM6QmejHhsQ07rLIEmSo3AbpuQ=;
	b=A5/gXazMnGT+3PcSp1SZ92yho1JstbKqANyzxxVyympeJJ6/vVO3DmezYLvJyr6N
	T7IlAuDVOS5Ikv8ioo9PTm4SPq+/7Qiek+3nvqdkvnpvKWceu7XuSkH1UpybWzP5RoK
	fiN3AhTTM856j9TrA6xQjgIJAxHksGwSQ7Ni5vu0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ebf8796-e967fae1-e7f6-4aa8-a5f4-129fd4b2311b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c06b217a39a0e8a2a763ee33adc7560f94e301291f75121aa337df5a767043b
Date: Sun, 6 Mar 2022 10:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646562084
