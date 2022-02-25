Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 870FC28FB
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 19:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645817484;
	h=To:Subject:From:Message-Id:Date;
	bh=jlbMtB9wRNB0ZOnFOvn+IC7mvE/QlTcCvANYSBdnn7I=;
	b=UC60i64nZnjSy5qWCbrNGFwzHViCIivlQjRT/cvXsyIKGfyAAvOz4nc32ZS0MBuZ
	L4NctE+E6aAofNtkU7HFV4OJ4Qzr5eVHovUrqAyRvc88Pu7ANDkPppYMA9yA+pmow8N
	MJsy42Y6ksXieGDgM5lcI3UI2r4RdTRmv3UpHUE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645817484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jlbMtB9wRNB0ZOnFOvn+IC7mvE/QlTcCvANYSBdnn7I=;
	b=h1Ye3eFRKbXvYivEUXuq0viEsXLXd8KPEnObNBhWuU5i9/sJvDvDkXIp7bK9AtkR
	Kk+NT73gBQY9uHzAOFBfm6ewVzZU6yoMzAToiWEGjL0YDa9K49+DjmZi6AvK+C2KKUF
	oNNxAZ6O56C2pYw+b11ydqsqF1cO5TP5K0fD4TPE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f325dd5ea-a668af6b-6ab8-4f13-a306-869a9672c0c2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5b1dca10379d5370871b34ac17031a590cdb3ad477599f4efb847a354857700
Date: Fri, 25 Feb 2022 19:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645817484
