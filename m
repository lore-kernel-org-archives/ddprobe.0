Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E877E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646981484;
	h=To:Subject:From:Message-Id:Date;
	bh=9vQvChlnjC/sQEkE/VGVlNmXMbSMSRHRfmqtO/rLaNY=;
	b=htVP5RMY2u/wohwerRr9eOjE4Mvn1j6peCYvf7Ukh0ntvi6sxdnUHD/7odRVY+TC
	RN8Ds5NPlS0dnVQfJmA+0lTjA1f56Btg9iChy9SCMW9Pf/qCf1VE+poHnMFpN4Lppuw
	eR9n531NkEeXACpKodbHjuEZsXyY8cLEo7T/cRRg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646981484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9vQvChlnjC/sQEkE/VGVlNmXMbSMSRHRfmqtO/rLaNY=;
	b=RJYmeYXhtKJ3L1xvVVRgKzYPJbOOci40LfKZ7bredOOsKWtGY7FZJ3xpDE548XY9
	s/xsDezsl6wVAANOV+lV+LIHKUevknQF8kyzX6BB3oTxsxf+uijJeo0Q7hjeAhtBcPF
	ewCkv+DQLXUcuxcOmqGNx6QVUjuYz+TGn96kXDZo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f77bf10be-100d38ec-f771-40b4-88d7-ad5984c137f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3bc4b6538b94d6cb1020e0adfa45c920ad29ff52dbcdeb807ac7b9cd2a47ac6d
Date: Fri, 11 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646981484
