Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178A17A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 13:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653053699;
	h=To:Subject:From:Message-Id:Date;
	bh=ZI4hZ4rFy3ScHjDbA2kJuYIgThRc8nkal6Ai0SMMge8=;
	b=Kvx5Ni5xtUwr3WLmyRUz4FEzI11fBG/bALd3krkH9mefJ5lYWyzWiGItwUQturuu
	b9fP0o5RYYSpPMovpfuA5bS9lAJn3CtojNJ6fQxzxqeJa25p2wi387nFW9/QRy5s9kx
	PaK9Hpe7Lkwc4XJhM6/Hpgz8tD9ftymnLyvZoqsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653053699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZI4hZ4rFy3ScHjDbA2kJuYIgThRc8nkal6Ai0SMMge8=;
	b=I5XH4bFniVOz4ODIrIcrWRiHJP7hiFJax3jjv7+FoLyB+voY17jp/t9DHHnwzkVu
	3nKHFVW0XBTZYnETZ1wcklhEBqnoZyFDqM5+aBMXUAIBL6pC9YmH7XE3ry6mKLvOTQD
	E7rSvAoVuLsyYX7Cae4Df054J2tIwTKlyBHbh+sc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1adb4d4-ec56d6be-eb22-4918-aa67-4bb79ded8a38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a69e44fb051af9b21cdf1bb6dd899304bcc12848c7d3da68fa4d32374164f0a
Date: Fri, 20 May 2022 13:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653053699
