Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5041850
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 11:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656676012;
	h=To:Subject:From:Message-Id:Date;
	bh=cpnce0pftx7cnTu9QBfYdXyYe233jiaVLkFigKm5SBI=;
	b=FE8PGsTvG53DzMFbIt5XJo4LeRPdW6TudTLXDLJb98XPvdN3uIfuqtmoMyXdwwT2
	AiZdRk4/Yhbrkn02CUdwAtywz14KhN2VOJJHrOgYY4qlHQuW4GNUpVeb+OnHPsuqfXK
	3FKmxeNNHV+SHXv+VCIIUfOM/UoghKXsbGfonoPk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656676012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=cpnce0pftx7cnTu9QBfYdXyYe233jiaVLkFigKm5SBI=;
	b=fixmiaMTcvdS1HpUzcu4THxepIK/+K3OwJQNjpKV0q+TnpIfR1Ttig5aHoRU49fd
	uAj7ytSWYiaPEq0y9+6g/PkaQrUJL+hwST0fz95+KvwH8xdfdK2saqkIA67n2WukE0n
	yMTs14zMwCLLGA2fr3U7guR1yl99+2ECNgGvUOXo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b995d128-41411195-222a-4477-8f06-45cc9055eaec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0667382c6f76e007fd4699b4256917bdfdff1b48dd45854574c640366d82048
Date: Fri, 1 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656676012
