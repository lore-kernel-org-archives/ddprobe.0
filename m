Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5185A7C
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 18:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653503879;
	h=To:Subject:From:Message-Id:Date;
	bh=mJPOIyFn/nMc9mGcGHSt5Gh+CsEK9fsqsl6JG3OOcq8=;
	b=e+K9IFAtTneqDKi9LOPUSLAuPH2gwq5Jm7IUWnUCWT0tFtMKx5YHLktAebejqvhb
	1HdHhJ1fol2wislXV2Rrbclxhkb7ImO6Q59YWE02Ilakw6bV+vdkBQx79q6Bkk2w1xr
	TcGdaGEz70SFkGiPBLsKpgUk+Vc98crgW+iiv0KM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653503879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mJPOIyFn/nMc9mGcGHSt5Gh+CsEK9fsqsl6JG3OOcq8=;
	b=fOjbtB1h4pogl5HA+xVsPe1DL2UeCGDoK+JyjCWitunJaecZXnv4hgI7TgmUk+pm
	BtVyeZCPR5e6TXkQzpub7UEpjMrkZhL7wtAPGcb1ev9l2wY0v4nxWvTdjDDTvHc91mw
	6o9XuN2v6uofTvV6Fx7ViBekjEjN2bUEg+Ezd6C8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc82e872-0d9242e5-920f-4c95-b240-f33660f43066-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 587fcfa9c045f1556df3952162cdd6ba45cdb449cd94ce28609a72454044d991
Date: Wed, 25 May 2022 18:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653503879
