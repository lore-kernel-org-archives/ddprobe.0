Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64607A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 13:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654869359;
	h=To:Subject:From:Message-Id:Date;
	bh=0asEo5hpYoBmXeXcympgEIGr+pJEs0I5JDUuE5CBk00=;
	b=ANYG1Sgrx7hq7FFP35txPc0N1B6/FqzssQ4pyp5FUaFNR/1Pqgn0Dx/JMV3oKylY
	Jy7REYjeTVfk06BjTgmd8myqD3mq1ncdMbBhdQRjZDPAgnvxeL+Ctv3dzPbxJ9kfoTW
	UGUVipMnkThKzWAP3NATwxkRwsyFmtAPgNt6k41E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654869359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0asEo5hpYoBmXeXcympgEIGr+pJEs0I5JDUuE5CBk00=;
	b=gGVxJlpg7Cq8wWOlF9YtR0SzvW+EGH1v2CVehlOmZok3sqG4wTt6KRLIGsiGqcHD
	1S+ZzSn37I1HkktXfntBe2cmt3eT8aGtxxMsTTjK4nKwX2N6rf1TbO6ho4CacudIcrN
	krqcrBqATSprjsGiCIS7lalR28835UK/x6hPQqmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814de67a6e-a2afc108-2ba7-481d-9988-7df97eddd7d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32d17d1915ca6ffabce7defb0d4e407782e888c25e5ae49f22cdf8d815a161c5
Date: Fri, 10 Jun 2022 13:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654869359
