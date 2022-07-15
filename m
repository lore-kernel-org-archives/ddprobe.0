Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A3D7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 03:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657854412;
	h=To:Subject:From:Message-Id:Date;
	bh=MSLgCgodyvfm6psymeaiC1YR2E8HKWewnnQi0yaP6QQ=;
	b=bKdwmwyy42VH4GwwK30NBXb3Jr4qZ32KjmHPcUdukIkpXdzRf7q1Vt7IgSwUTJzk
	B/HmLle/F9A1tPwMHYSvJAk+bktWyCVXyqpNgOmnAdpMzAG8T0l1ucNTBFPkJ7V6F3K
	hQMb6KwiPWNGXf6mOPhCrHFRZ6DXTE645ecZhXW0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657854412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MSLgCgodyvfm6psymeaiC1YR2E8HKWewnnQi0yaP6QQ=;
	b=dvpTKuhJMQ8n8ACGhlglHxjp0cQmthQjsgGxFbG5N8qdw7MrPo8+3Jdp0XcUvFXP
	ei63WaeBddECL9zTEEo/ruy4z7weR+mz5GbIUB1znEkgPo8t/WwD5U6yXa8x3oNEQCw
	3VbALf4P91XtovvylgMUaBc+n6wOwWZw3VOlhK6U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ffd2c606-0b9a5aaf-4a48-44d7-9178-9637424abe75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ca484f01b625cef5d21d460a65fe34ab6c739659eff3a610b1ba08498b96bc7
Date: Fri, 15 Jul 2022 03:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657854412
