Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2002517C2
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 00:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657845412;
	h=To:Subject:From:Message-Id:Date;
	bh=9xqvKCrXef8wP+YgIk7KvK8pfKEBRDySSlhl4kYp7+E=;
	b=aDRFRJOcR60JcWWTwDZ/FDCA72tSmV4y+2r0UlOLS2ah0XOIGHDjog532ec3HTlF
	vFvThGe/0JnXkdny36ApOBmATUbfubRV4y9ZqryoopAp7MjDZe+cSW3oxUgyZuTzCem
	5Af6LIzi95hCs5w12as4Da02FVbp47lpsQ5iUBCU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657845412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9xqvKCrXef8wP+YgIk7KvK8pfKEBRDySSlhl4kYp7+E=;
	b=j6pkCZdgMVKc9nxXZPw5Ssx0m6HGKLEMuPMBbHJQPYVXFg5vO5Nz266/QYxjmyPP
	rNf+vWKG3sbLioyZA3fivcOWANMaoQEerrrOsVja11MmAlIwy8fwlHoYsR2k+jklwqb
	Ztnx768QwSmyYO70kw86RPHdmr6ZPhaokCJ4BftI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ff4971bb-eda2dcc9-d2ee-415c-b6ca-e7669474c6a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9be2d0232c6fca24ba0ad6cad74ece50afd2c371fc7646278f92c3919d2eaaff
Date: Fri, 15 Jul 2022 00:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657845412
