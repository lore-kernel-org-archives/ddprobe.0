Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287687A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 06:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654929359;
	h=To:Subject:From:Message-Id:Date;
	bh=ygk1pYXWB7NHmO5vCkaffDOK6LUZL5g3YHtb6Xdwev0=;
	b=TofSzWZEHk3Lw+b4CmbvQVxWQtY4PrOGcQlXZORR2u6XZq2DbxX3iOdklYRiu5L/
	foGjcyEsghwJ2LPk21a5tNU/K4IZbssK6d3ekJ+/++QPDWc+NDdQmvu3kByVLvrexrR
	FH3/FwuIAckQG4gQ6TRb5mlueTLzKNOJwTJ6m02M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654929359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ygk1pYXWB7NHmO5vCkaffDOK6LUZL5g3YHtb6Xdwev0=;
	b=kQkkGV7JNwtyI7moChnXPCBvEkK/pYoIfgFWIEUmSq+0vx4pqCAe8yKOCCUYxjn7
	QmUs9R3+oQ9dpj64w+qblNlH87cNTw1PcLmNAEK6H6M2ibnOi62PdDJHUTnB6a5SU6B
	zqTifBQnNVR6GXWrgukAPBCdJ3R8wdSjuMJt9u80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181517a01ac-f0805c06-acd9-409a-b4a4-46abebfb6e23-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6136ec2f64669f40084b5a112215bed55a3a4bc1fc8ab6aaaa8e843b8cdc7ea7
Date: Sat, 11 Jun 2022 06:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654929359
