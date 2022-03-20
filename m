Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CBE233F1
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647792384;
	h=To:Subject:From:Message-Id:Date;
	bh=UR45o65h5yIa3RRoPvnmoG72inrQKYD9cHdwEf9qTuU=;
	b=INakN9qmoa80udsfDH3wzREtUO8+nhWzAMSOmrAhD/BUSDu1fKR/Y8r8cn1eIpM0
	XlqFyqAo1amHlbqMEUwhxfWRMKWn6hqJxSceU5uTdBS0nGuUzPVfVP2LhWcJ0lcMwJK
	+xbzhNIyULLqE+2H+//4uZT0ucjLDy6uw49yYoLQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647792384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UR45o65h5yIa3RRoPvnmoG72inrQKYD9cHdwEf9qTuU=;
	b=e61bxpUF89tGSD7iMlCCdj0VjFUhKgiAG8Kh2tIghUqyb7DTvXpH4wNIv0CH8tnM
	H3pjn2KuWqvzbktAQMaLsZ/EtJ6BWplxWxHmQxbMd9Hdqjp+ivXTd7B0fgARPK6OxSr
	QRhvHXy0XOXakhK5BpimNr/Owr/6lpvtKxW7JmAU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa8146aff-602c14b1-168e-447f-9897-fd64ed106a5c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d72c9f96c7e212fea500de0c9ddb28f264248f244667f27377c58dbd590f8ada
Date: Sun, 20 Mar 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647792384
