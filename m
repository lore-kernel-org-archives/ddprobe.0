Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132302FAE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 18:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654195799;
	h=To:Subject:From:Message-Id:Date;
	bh=34RoOojY2UDxFcGabbBMsPs6jw5ijnCS/GIdoWKkUc8=;
	b=aA/y1udewjSZ8Xnm7FC9mf5sHwDsoEsvwloFFrCKeidM9z3PHgXMWXKoXyradTb1
	Bv6+AU+SAIUhfd1z47u+AfLkIPm8xKpatYx3yzRXDli+E1sGNWQSBbV8hV16+rvuCk0
	poOHj9Q5nKTKrG8tF2Ocwo2kq1Bpz3nz5hFjD5Vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654195799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34RoOojY2UDxFcGabbBMsPs6jw5ijnCS/GIdoWKkUc8=;
	b=YITwEcWB0uN9IqNlyf9tINJkj6NkypJkX7dE7/MeWx6JXe9BOf49PWvbfnB/kZvO
	qbVjbVghT2V88GjGb7J69cIXLEupGPNToCgbsKyQCcXoOw916h3e6VLLDLOqK2lm4AD
	TD1M1QrJkL8uR8D0xIHOJGI25uXRGUhGr0Lp/yBY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018125c0c51f-6db9d462-2e0e-4e49-9474-83822d81e906-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 714de543633be4a1bc976f4d562f310a864b16dc180f98ff7f8a35ce541149c3
Date: Thu, 2 Jun 2022 18:49:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654195799
