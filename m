Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856E517C9
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 00:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653180719;
	h=To:Subject:From:Message-Id:Date;
	bh=hk8OC40iwLIWICpW1E1Qqvrwjls5WMq4TJ/SGrHEcuU=;
	b=CLZMDY95JKbUmSOVSPCcvmSQop6iro3ZiigRZZY9x06f9SwcOyRyTpjIdB1F9bbd
	e7e5hrazT921wI3eumhzCHxQJshjBVE8sMWS5xcTK4I6CoIwnJEVjAkjz1W0BtUPhH7
	NIC18B+Gn28Icfavtni9kB51hEsjuPYWPN2yG1V4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653180719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hk8OC40iwLIWICpW1E1Qqvrwjls5WMq4TJ/SGrHEcuU=;
	b=WTsV90w6lrrPIFmOCQmFZqi0/2Tj95CxJ71KMYNT1HDbRAnnltTNW8aTqQdRpwSh
	KaavhXxWDR2ydnlaNbvQqbpwmgTMf3exPHVvrn4W07+LZp4u4AcKnomccNBVqLM2oc1
	E9jscEefGQe6RpPclySs9kz+DzTRzxZCzdDkUSp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e93fe094-2441f3c2-90e9-42a8-8c0c-5d350d3f717f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d28424383505e639cd24a98dfe02550e22713e974b1d38a64d009d70abc0f3a6
Date: Sun, 22 May 2022 00:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653180719
