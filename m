Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05FDC182
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 01:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656983212;
	h=To:Subject:From:Message-Id:Date;
	bh=lDJsGq8AdeuP+s4M7W0vfgpZXzdhy3thdksrfWwsLrU=;
	b=jyqcsE3vvYtSy5ytC7n3RQ2ZwnIRNFXbWSOKSAmvC7MJy67nmdH/BjjCQ2ykngE+
	P43/HrvOkZi6Ygl2MqQfKlgOhbuZBmqJrNHbXy6eM1GfzFsDqLymzgmzdkEePTdPX8f
	AUjsRlzdMMXaX5mJ2eX82jymRv14D9QyNXPf5B00=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656983212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lDJsGq8AdeuP+s4M7W0vfgpZXzdhy3thdksrfWwsLrU=;
	b=bWi0uft+6LbVDzE8o1AH2qM+M9jtb4HLsW0mFpgJ86UnJ9Nk4rQ8nBNb3m4NxlIt
	UuSgYMz2NGDQ0cfo9F5eQ4tD3Wem5zgFBzrMipku3DW8dyEyT5dYstwuvP4r1XSygYz
	eLrJoiHDAdYWjpL8IcOB0ADWB21NZB3PADQJj1Js=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cbe550d8-669384b7-6d0c-43b8-9f2d-4d65042bcd0a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3cb485a7c81271114fe45e8cb1a4c828e2de6c0767b204c1fec489118e47584
Date: Tue, 5 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656983212
