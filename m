Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65E861FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 11:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646565384;
	h=To:Subject:From:Message-Id:Date;
	bh=kipuxPKv7SXruEA/T56W59v4KJRw6KPn0dqaTaFl4Oo=;
	b=imDDGkbBeIwd7esy+nHtuE/c5ZlQyQfa/Hoin9VgDnJFrdGMgXugYfbmXKhRJ+77
	z8HJEx5PjiyW83M6d3xWu76YNURIaqTQWGBfLZfSeueggBh2TGoXJJCXWMPbwOUDUEz
	PGd5AoiX9Qp2WXpAykUfMDvzblLjVu0KW9eOvCi4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646565384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kipuxPKv7SXruEA/T56W59v4KJRw6KPn0dqaTaFl4Oo=;
	b=IsFO+MM1lj6xvsh92ne847+xWSYQVmPLg1WvRFrsvkOA+PyXENtR0ayIQJOEttqX
	8ccVxd1JU9If1U/VJpRhilHwoezxbU9dR0qTSuQ92ihjGpCSqkeUPDV477hhHlsBG7q
	21Pn6/na9/7AW8Oj7M9OUtTqWtQMXzEff8AVyaLA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5ef1e251-80d91c6c-3db9-4422-8a86-9c5e8634a1fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2f87fd151da43b97d3fd6e34332d57c81b2ad25a56eaf6e2b0359e45b08f22f0
Date: Sun, 6 Mar 2022 11:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646565384
