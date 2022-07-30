Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0D31FAA
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659171652;
	h=To:Subject:From:Message-Id:Date;
	bh=FqlTOhyeFZrY5YCyxWucizfdsJEEZ2e0icT4GyvnxLs=;
	b=HJWXydcM0DHSJF8CPeuC8RBg1frHYlVryhPcB4k+1Gp5cFqOLDNdms0i0JwpKAwE
	LKhLb3a3VR/4BtLRbpkBbGAgbjooP77PkvRwrb14BQp605jdMFvVCWey7s6JOrIEOrG
	bl7XarvKZrZaofZBT+4CrLPh6jBW9FWAAO7v94gY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659171652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FqlTOhyeFZrY5YCyxWucizfdsJEEZ2e0icT4GyvnxLs=;
	b=Tck97pEvUh8k0VnarSzIwKREF9jmoZ0x6fG9LcyieUeA5VldoqBIJNncAa64KZq9
	6f4oskfp1voE15S24WGpeA9/RR8JMl2c2uTUoPVCMEP2YqIQfIGKQQJt3UfZOnnDKTr
	C8Q/nKjOSaHB3L+0EkiUYfaj2qLyPDshCALONoJg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e5643d9-c2ffc1d2-8850-4a29-a3b3-9068fe15e97d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d78b8dd28ff8b013f4e3a0d56ad9288bd9204e3864cc3242eac9e5c6fc95860
Date: Sat, 30 Jul 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659171652
