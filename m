Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F987A
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 04:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657342612;
	h=To:Subject:From:Message-Id:Date;
	bh=9OU+p7QyYe/RHqW1lboIGGrRKBhjyqyOL3B42oSYixo=;
	b=DU58r+hAjQegHi2E4Xwt/a5iWSzPtzojSkh2SJjO4yK6HhoWEeKPvMW289NgQHjh
	AiAcT1u7fZnaCb4sJuQWg75Egf7koUUezbS51tnbw1sdaNVK0F77ghQwQcXJfvoOyNj
	TOulCQG1h35DcDHTmTxTSUa7ksIf7CblXSibC55U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657342612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9OU+p7QyYe/RHqW1lboIGGrRKBhjyqyOL3B42oSYixo=;
	b=ImO9np7eWKOnYpmcJVq/philCazycjzENE5L+NG8nPBn+0vTpMEl7lVLgSGpMP3Q
	99wqM7iVn+F7TuGk6/9xecaK7oLD1fmU0bA772iuRMLMMdnqz2o28RhE5AA4gesU2b/
	LhVoYbDafc/m0D81V0x20dIUbX4lnRkf8HLzAQ9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e1515376-c8c0404e-e6ed-45ce-87dd-e6bf8fde2eea-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d7b42aa1012073bf869cf3a8624057156534e6966bd47a96fcd88d77f7412ed3
Date: Sat, 9 Jul 2022 04:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657342612
