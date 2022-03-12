Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B10336A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647045684;
	h=To:Subject:From:Message-Id:Date;
	bh=+Txms4FfKusPo0X883CRZrqDIGrYVvYeD2QiRiPSqbo=;
	b=Ark9tbkN4qcmQiUAUiou3gv9c02JPdbcyCGyS+vzR37avP2dU47IKztsjuVlwhqa
	8QovaAo93l5QMPcAo+UtvcqyYOOVmFXUnuPxxx+LEUlG811GDU2m53RunLhT8ql17QH
	itU0F7mhbGsorLb6ppd9CJ4KP0cqjIYHNJ5yYgBk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647045684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Txms4FfKusPo0X883CRZrqDIGrYVvYeD2QiRiPSqbo=;
	b=i3WqBKm5/f8lnDJTKMWOmC8VUX/ImuP1w7CZMZrXiasG6OS/94HpHWEwkyOspWcE
	P0DZnlt6ILmoLhCVJiX6zBmjE0SrEYm2cAODIuUuD+1RJX4mXWF6zJaJxkcul9QxSDq
	mUeGiSBuFgl6zEXw/EQ8F4Z1igLWPq+RaU7GnroM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7b92ae24-90f5e413-17ab-4d5a-ac7a-722835893db6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 490d15db708d7c493e090cf561621183470cedc02a01165721a44f70ea87cc58
Date: Sat, 12 Mar 2022 00:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647045684
