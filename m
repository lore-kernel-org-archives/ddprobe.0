Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424356AA6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 21:54:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655416439;
	h=To:Subject:From:Message-Id:Date;
	bh=SV5WvBMQnCjO3Vl6HORal2P8YX3Us0mfbbnB2BImckw=;
	b=P4+sjkyJVcnQiljunX3XypSaI8Lq5DF+CNrtEBgZf6LNwCb0jm2TB3PQE1gq5bJ/
	dVrGamy6/OCr5RZaksTkbl7mGV1754sPJbBcJ6YEjp55YAJAVFDuAjFbRXhIqlFRXVa
	moB1w4nfU0/7jkiT73Uo5zN5v3uGtiRUAGF5svqU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655416439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SV5WvBMQnCjO3Vl6HORal2P8YX3Us0mfbbnB2BImckw=;
	b=Ka24VK0uVH76cnRUvycg2DxLoI7J/3SP3wDspVxoa2HKVJEfmU/arsZrc35cNcjP
	2nF7ITEGBz4iWAdTedcEKk7ZfbDepZqr3dPY57mD/0EjzeKMDw6yyO7cVtkmexWvKEN
	UIpcSIeeUmnB0Sp6/MB+T8uJcrmjeW6aleG5Q8Rc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816e824281-c99c7645-38e4-43c1-8df0-53ba1d31859f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3921ea405bcba3b4e45db15b7e273f0bb7a4e5bf5694216e8e65d47afd5e3726
Date: Thu, 16 Jun 2022 21:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655416439
