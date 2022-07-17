Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A84D817
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 12:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658062612;
	h=To:Subject:From:Message-Id:Date;
	bh=f2hlVCcEed6koZWs4mv8wIQJB5cqD8lQz8IwWwFQBUI=;
	b=bzXhvKJcx8r6nm4yUxHkR6d22vfAIv4VM/m/iy4I1PT6o06Y517vlKu8dIMXQXVV
	2vOoopBWvzwuDK4pd3B/Y1vfQYxnZ6IRRID7t5t4BSVkukDgLEy2Y9RxmNoRCbkcdUI
	LwE/I2wiWkKgWf7VOMLBGVLTave55kPGLCRIN9B0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658062612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f2hlVCcEed6koZWs4mv8wIQJB5cqD8lQz8IwWwFQBUI=;
	b=jJ96GU7wTviHhqv0fZ/N7i3OR/GPe3ygx5yHdJ4HVmh85vf3eMq35NrxwqbCKWio
	IJ6+JMxoNscRPO01HzYmnHHgvgjLZ/rtZHZvJ8w3azPr0JqVNs6gd5IvwMLYkT4RPn1
	S6J6cHd5Bj5zq6ExnoNJIiZ6vVwILD19RN/RXS9c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c3ba770-acc12693-28a9-414d-853d-d933470a5921-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2c65e2381f5be0f12f4516af2e0a2575b2709709a7e5519b8f02247530df252b
Date: Sun, 17 Jul 2022 12:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658062612
