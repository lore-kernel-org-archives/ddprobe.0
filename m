Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24621854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 07:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658387812;
	h=To:Subject:From:Message-Id:Date;
	bh=ELCuY8avUAvBpC2BDKR0PiviQggUBqR5Ib6wHZqH1u8=;
	b=YFmTfhUZ95zsO4mzCCtkSV3Q/ApdbjhohEGcN9vNTnMK3TQ5bUBCrmNmIo4sC6T9
	LUwntarK30DbllpTxFbWz1gc3iaTDqYl6++hnjRuFTHQa+wsB3HZ0RoAcg8iF59Ul/s
	dq2LnS10yXtnQDNC4rDmLNRdPffT+9RnlcyiWNnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658387812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ELCuY8avUAvBpC2BDKR0PiviQggUBqR5Ib6wHZqH1u8=;
	b=k7MBJj+MV+mypikP2wwg3PGFdx8XD64UrUyEW+gBKRtmfZieQuTJNwSK+iGZAZNq
	zT7o5C8vsHKZa15m73HoKk4qEsOtjYtxx5jdxGVCkDMdkUfzvsI5scWBP3KRe3glB+X
	3Y08pswRwpWzurTe56MylRIhUtGtnJWu49EQx9sQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f9dcfb9-30456326-102a-42a3-8f82-7e0b301c5398-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4225c53d3160d44e2b10a9f7924b5e0f8e9cdf5234ba6cfb77662d9e424d7a2c
Date: Thu, 21 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658387812
