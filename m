Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D40B198
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 06:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660197652;
	h=To:Subject:From:Message-Id:Date;
	bh=INt6vDK8WQXgyjGDHQeUreC3MvzMlPPk/W/MbxdSDC0=;
	b=Mgv6aT1fdavUe0jRmkEa2BEDh0e+f4uD1IZHKna3qdu4bCT3AnlsKN8GXOW1o4Ca
	x8vOJ5pAaE7ZDoc2gfiRD6yv4O0OPC05DNavRc0QFO5OAsc5BkG8yyn31jmTFEF9VDy
	8XDgMNUsMb+AZHT7EYDRT21gy/pYiDBbT/eu6SIM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660197652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=INt6vDK8WQXgyjGDHQeUreC3MvzMlPPk/W/MbxdSDC0=;
	b=IxdvrqU9wQ8xRsfAou1H0LtjywCeh3Fxey50l9pkc19pWFaix1jCSzeAYmGdusOD
	SmH/ihCvQCXYis8D8qRM7SEz5Oue2rdx2sP/fNiAkrfk4ScUimekp2oqQizGKMbY5xU
	2dStVpxLQP5nerOqp6Nq3IPz9iQ6aVyoCKbz49gI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828b7dc859-5c3b5aa5-e870-42de-8412-b83d1494ff0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8985c07ec6b41d94223a4c0b4a08142cdb78deac4bc3127565939b1b80f56192
Date: Thu, 11 Aug 2022 06:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660197652
