Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0B777C
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 06:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655274059;
	h=To:Subject:From:Message-Id:Date;
	bh=kuPP2hT823Yic4EiAEMjWgLEXP3bvJR46Wbvxvh5Sx4=;
	b=A5jzgqxBR4o98PsQfoe/zY9GhQBkOLqlUATLA3DB2YB7aAXa38ZmLR2XXME3qOE5
	ffBexNYHFOLgtdF8w4GOj3nWeMIcgnBUZol/VBe8cg2vLcESRYkUSKzP7sh2cn3e/Hp
	N9AFAoEa0zTSvHxwmDLDlDD7yB0XgobsosIYOitk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655274059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kuPP2hT823Yic4EiAEMjWgLEXP3bvJR46Wbvxvh5Sx4=;
	b=bSpqKZyKqUMgAgmIgl8hOpUfk5Fmdt1pZC3dwBgn0DlvwtI85CHl9sa/BDun6DgG
	+VWo5AIzVyHMC4Nr+ULfJsWwFpBk7w5gDU7WHtJ25Vv1FJcSvoEK1zmvposKCvtcMuh
	Lh1kwMZNDvHIme87qk1qyIItd7hIrzA2ED6uSqhs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816605b621-c6738a2c-6838-4621-a8ed-1cd676af58b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cccd012d0a4279d444ec2ef984ee0eef2146c54434bc960e8013db55097c32a8
Date: Wed, 15 Jun 2022 06:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655274059
