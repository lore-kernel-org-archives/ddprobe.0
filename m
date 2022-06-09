Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FF320E3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 04:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654748939;
	h=To:Subject:From:Message-Id:Date;
	bh=BUrN208ubh5Pw13LulqgnmjVPMa/d8EjrG2DJGnZtQI=;
	b=k800dJf8C+jM1tgGXF3+3Fpx4pdFSZTzxBEzBCcj+EbyArSyqViA+F+3yNqH3m7k
	f7B1TRDYGAu1f2Vi4r0T8PN3an5QfC6qZYWb7878bCs1ReO/9Psx5x1fHC4wQh2xPx1
	2Y5QV6OYNMxd7LvjrDkRhcAE977vkkgS3FTN6bgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654748939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BUrN208ubh5Pw13LulqgnmjVPMa/d8EjrG2DJGnZtQI=;
	b=D7q9ytOuiCrBvQ715iaeL5lEUnemT0Go9oSAAGD3NsthwbdmGrs4n5AE7vL4TZYY
	Jotk/PApXBXLwCy+NaI8V/I4QHfBkcGhsOI2FpefoHwQKvJP6jPIYbjkYQCSu2nwE3n
	dfpy9UYuMQf2mAPJzmXtRwsL+VzrRODUnh1b9c4g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018146b90468-ed275cfb-c29a-4262-a8c4-cc5501f9b621-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 48544d6956537e781b1f9522455a88140b39f5c8e4ad24556b9fe561b1073e07
Date: Thu, 9 Jun 2022 04:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654748939
