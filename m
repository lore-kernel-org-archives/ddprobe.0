Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38FBA184
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660912252;
	h=To:Subject:From:Message-Id:Date;
	bh=LO7u1y4I8QSlCdI5U6J7LpQM7RaVREFvNHxFeSUs90A=;
	b=dQOg4P23dq8+fWEjkJcoDjkTLHD76mtcYx4UYPkbM5dKTLK2uZuuPEg+1IqIUR/C
	WNb53mWOgCd4zibXSoOCGMk/Zp8JAe/EPLeywC6Z1mUNmy9sVX9/j7treCzIo64S6l8
	GTcLnXdQI+brI3KWRe0K2EeqYwoZa7lClitt9CMY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660912252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LO7u1y4I8QSlCdI5U6J7LpQM7RaVREFvNHxFeSUs90A=;
	b=Q/9+YNafIBQcymQa4Sm1KH0ua2qFWkoQpZ1tAeMAv1UpHSc4nRqdGbiiISVrOjCd
	4V4LiQTCUcNfNwhVIfRXuBGhqPPUiG2Y11Snl3AKZTJtjYa3gK2jrft5jFdo0zZZiaR
	4OhwDPVvdZZJkBpN05plyTDdYWjOp59cJ6T3UiiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b615b664-0d801420-9194-4249-9d6a-6ee823d6eca6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b09b62cfd80dc438a3a8d572020ff5ba1defeb822f89f6558444ca911c5b0cbf
Date: Fri, 19 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660912252
