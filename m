Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6804A366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645502784;
	h=To:Subject:From:Message-Id:Date;
	bh=pytfoD/Fv+oN2lB04MExIoQINIq3XTIJo+s5HVmlkUk=;
	b=XHIs+J5IpHLkf0nZ4JJHuJJMPaWWYsC9IHerNTqhi0d91Lr/S5LaxSitfIfQWzvT
	dBV92Wq3psepr+j45+utL5SfNlNvMsj0b6d0xFAuE0LWj75/G3b8QNVjJXtFgI/0+r5
	gj+KKXggigO0rqwMd0z0ggPF5Wk7i/OTLwg7u4nY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645502784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pytfoD/Fv+oN2lB04MExIoQINIq3XTIJo+s5HVmlkUk=;
	b=eDJ9E/5pMDu36jvIqu/CDXuxJCXwhfyjpkcARUDm/J1MIIAL1hgFAuOBbN/TPzOV
	oQLt73WgF38QBsNEkMq3jD2PJFXM7S/YPKlplfvBpSJRlFhxdMOsbCoEmbmg0dWH8N4
	hS5rZFG+hGVgBIGH7kn1N+22MYBJgoAZpQfOPICY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f9be528-c4679fa9-1c41-43c4-9d6a-39f365a171e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 55b16206ef813941c7e4dbfdb8fa1910f46b79271bf9b9eb07491c06e7e76c30
Date: Tue, 22 Feb 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645502784
