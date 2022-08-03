Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3CF7F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659507652;
	h=To:Subject:From:Message-Id:Date;
	bh=aHF5Akm64SUshwj3nXXFPSR5esiYeh5rAJaEln8t6Pk=;
	b=ULwSh8Gm0959KWEh8vy0Ft5oblNbaAm9D1RYDHk6z7Ifnmp5GqDL/ezh94jcdinD
	C7NanRF6U0Q3u1OCVZO9p5e/iMZHkrxJlHGh9ydqTB5rAMRzK3nZQLkq/t0avQLeyuT
	6G77BO2HPbTbftYjZnOfjExIB5uSVHfb7J1zYixM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659507652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aHF5Akm64SUshwj3nXXFPSR5esiYeh5rAJaEln8t6Pk=;
	b=WSDpQKXMnQxeFzeSQnJKG2VUAW+ygQjpfV1sOxwt+PbMzNGKMAQIWQDxjJ0XylYa
	z8UrqTmwl+9aHoL0R9/2ZKJY+yFWOCh62lcJ53Eg9BidmJnQdZwbj4bRF/2rMoIZ61a
	jrNnKTWAwIaq3dpwvgaXm4Ze4cnECRmwnO254FvU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182625d3806-a8c9d8d5-8eb8-4d2c-a240-338b7b8fbc1e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b012b9c50a21e55fddc873816d2d04372e423e75e6f1faa9c03bc0867eaaf44
Date: Wed, 3 Aug 2022 06:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659507652
