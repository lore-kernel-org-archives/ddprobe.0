Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AFFE7A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 07:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646898685;
	h=To:Subject:From:Message-Id:Date;
	bh=1yIGrtlRmoOr6bhcXRO2Op1UFpva3fkFqFDDBwIxboI=;
	b=WaWxktysfepCmGngNwgzz3rksAjsFNp4wdUsjP9mrr8jxcRM/DcVdvoVvhO//IJd
	zI2bGfoJeWoSlfSMwUWwTsMPmP42WX3OfLOGhzcF6k3e6HJNX4os4lH4u8gTZ6xtkPb
	k+yQMZ6/Nf4gZ2hT+dP2hdo569JGamwpGTWHl+Cg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646898685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1yIGrtlRmoOr6bhcXRO2Op1UFpva3fkFqFDDBwIxboI=;
	b=AzuzmdihW7Khaub+/SdZ8bxZALipoO4m5lnEUyYB4/d+WZiYbVRTpeko5731elTV
	ujUqaXBas3giLgwWJbhrOEXAUF76J4ra3U+nNIOsoRukLVEeo6qiy7I3ElAGQrmeWun
	ea4D0vSMEC6OL8aHPcF+/F7fw4Fn8PihMNWQBE9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72cfa365-94d86f03-6cdc-4479-b279-cb6bf93a78c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d888f78b4dc6308c6d344a5c476857a45067f6031726dd38bd72a26aff52f8c9
Date: Thu, 10 Mar 2022 07:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646898684
