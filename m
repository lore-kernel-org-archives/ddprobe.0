Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3268629A7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 23:42:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655336519;
	h=To:Subject:From:Message-Id:Date;
	bh=iWIIv2w/2LrEvcj0TQe1Nyh15ENDSeap2F26kIJPNqg=;
	b=XHCyduqFOkjESmXIhf3AXfA3UtHkfSyRYZ2MBHeHRNFGX1m7lbec9hgTxssLOi3G
	krycs2TP8kIVqzyXy8HiUONfvF/o3j/cnwFbdCtpbtFD3CyBmPVTo+n+IZbMKCBNLJX
	cyMB5cVUnzmS1c/xxj0dkVsY3GM2XAd0NmUr1MnA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655336519;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iWIIv2w/2LrEvcj0TQe1Nyh15ENDSeap2F26kIJPNqg=;
	b=gjbu4RgME8EAQx+9PTm4l+pNrYmRWdxG4Qq6EygPOMfAgH3+FiFqz+huw40TOwpE
	NAhv+McG998dHKxgOyfh/1Lv9hQDTajLGs3LbqX7E1FlUt8ImVbUooGy7BjllxyeLWg
	mLu26l2dFfaB6uy/c4c1TXEgj/Wz75PccgZZaULI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018169bec644-ea8acfd0-d9d4-4015-a14c-d0cd0734d541-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75d6fcc1fd8c3303cadfa15817fb2d2478f25ef2bd8e9ea49f7d7702f897587c
Date: Wed, 15 Jun 2022 23:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655336519
