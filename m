Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F12BC7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657481212;
	h=To:Subject:From:Message-Id:Date;
	bh=/1JRZ5vMztN4kk7mtRM5IprGeq2k6FQ8sMQ6BuTDN2U=;
	b=cUkv6rw49H4zqLXY6CEFHO+UArQ3Fhqgm+cZhw5q3mBArGCc7d16FkPi+xGApk2w
	TPu9dLlNkO5ibxpPaDAvaGRP3wOj0dafnrWCla7Mdi3wLovFmKsJ6h7/xL0d4KN8WX7
	EFT+g5UByJdlUFWDEOkl5RBkkAF9SRZP+Gr5PeYE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657481212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/1JRZ5vMztN4kk7mtRM5IprGeq2k6FQ8sMQ6BuTDN2U=;
	b=k+oFzns2T/8hrTewMP0sY2Qe19GtNw2JTvsOP84zPZEmt6NlIU5VF7J6BKvwgWHr
	yaAyaNFF3netY4aUb3K+Y3WJzuzSXkD/J7f0w97aYX08Qq+FqimQZpZZ7SzW7Om139J
	N8oMiaReCizXUPEZjf0MdqTWR6jKF1xIlbqC8DIs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e99431b0-3c0b0ada-7e50-4c63-8f34-b38b0dd979ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d8bc9b9a4a0092eb8c1a0d882ababdf0d432799c2eb0c2babfead9f9f54c0839
Date: Sun, 10 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657481212
