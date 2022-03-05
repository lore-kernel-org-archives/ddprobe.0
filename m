Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3D8C7A
	for <ddprobe@lists.linux.dev>; Sat,  5 Mar 2022 07:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646466084;
	h=To:Subject:From:Message-Id:Date;
	bh=Bzb/o3OgOKogad3evcOdlsE0/+eMGrIgehKdPELVmQs=;
	b=VuzdRYW44RyADNWAmyUbZSXR+9OayvL8Xuj3JLejhVkwyAAxBJqyU56MFqp9GVuq
	GndyRTHgoOi5YNon6Lv3vZgWbIp4ZZd3nWkG0BWqIPROvVkoGwXD6i9P4gik9+q1/CY
	v+oncz+C20IPB10D5N0+OB9ETXmTs0y+WmxtjgrQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646466084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bzb/o3OgOKogad3evcOdlsE0/+eMGrIgehKdPELVmQs=;
	b=RaotlQnYLl57NPz4W9hlwHUY1i2E0hhPNigw00z5zznyU0U1I8CN7Z11BcSeYD3R
	vVQW/weoKCYw0qksE/rJGNyRrGOH44R1vFgHJdedc+xqzQUAACVwJVmrElHp8kMCXwq
	T1gZpYiONqGG426HiB0mtOdZyskFRmleWYsyxGzU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5906afdb-cc3cbd3b-9b10-425c-bc66-89f8b726ef73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99fb85d02c0a97a6ac64655b29bc71cc5ce45ea37cab9c9ab2fc809d2d019574
Date: Sat, 5 Mar 2022 07:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646466084
