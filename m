Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178D21FA0
	for <ddprobe@lists.linux.dev>; Sun,  3 Jul 2022 09:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656842212;
	h=To:Subject:From:Message-Id:Date;
	bh=t6XBDZHxW8hrFTPrkYoYyZDUY9Tg9BCjzLHAYadsiMY=;
	b=Po51W8bRRWXwYnYHeet11L/0PNUcVlwT0+Ols72SGy1kff33KK17Zaxp03cTp53b
	yVOAyw+vh6e4VTBfNhKjew8CdGk1QnyKegwOf98bu2rmkCisbL7MTdXU/zKDslnPmXs
	rkDZPG2cqb7lx04jPmyQfTNvONzox13CWNkJOiC8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656842212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t6XBDZHxW8hrFTPrkYoYyZDUY9Tg9BCjzLHAYadsiMY=;
	b=WkBPSBVOnEE3cwRdnSmAKw5VMhy++XHF6oY+k3tiU/T2hT88NpCg82/sckYwHDol
	KdU1ZVt76dZ8u1yrEtzkEOmkVz2r72uGyRjKIdj2gy6rYIth7g72NyxSWKyxHgoVSO+
	XhFP3HaHzQOmljWVC5FnjU6w0bNP3ApAnazHHK9s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c37dd3e9-08fe07ab-bb4e-491e-b98f-1648661fe79b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64f4130dfcc40040cd19f34ad423922bc3a35ca48e55f83cb2ebf9a9cfd3cc85
Date: Sun, 3 Jul 2022 09:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.03-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656842212
