Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E5C1FC0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 16:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652115478;
	h=To:Subject:From:Message-Id:Date;
	bh=tLNKuWA3ZfcqcJnQeQI8HcxT8nB2M7q3QhMiLt5ExD0=;
	b=e2l4bC9S+P0nv/gGL5ZhJKJQd0BG4JF/QCKHEha16wAiJy7ABHveCn2i9ORhulPK
	hBg5ZuXdKWVLhGcPwkCCzv6ifVBFW6r8VizQMpe6VNbE0kMgYSnW8e4GXhKm3KdJVMM
	UDNreZbi/WU09GpsE+0cBZvX6qg91fDpxp0WWuug=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652115478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tLNKuWA3ZfcqcJnQeQI8HcxT8nB2M7q3QhMiLt5ExD0=;
	b=Ntipgb64O6ua9HJANMuu6kE1tzM49d2Yl81WDtodRWEdQBqa6mDLMA/Gwj2gb9RA
	1f1Z9P6Gxa3/nNz6tqXDKH4M4FjncJw9SE/v3SmPFdqTJKb8V0YY55Va3QgNaeHqDFz
	HdxJRgBR49rPN2jCV3qnbISZc0g8bLzQfoNjeO1c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a9c19770-ca546595-6109-46c2-b6ff-17d6a9fc1c22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d1d884f28b232bba280af094ba8809b2cb605568b5b4a38a467214499b23b5b
Date: Mon, 9 May 2022 16:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652115478
