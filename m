Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5661383
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 13:06:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652792759;
	h=To:Subject:From:Message-Id:Date;
	bh=7T3ogDhiipVZZi3fXgxlY8G2TNOLEbgWOatWI4KXzqA=;
	b=bv4pQp2aXW09yOhsOGJOpUTbOUPG2CRQYHH6USvcgEIUhJ5ZREd9t+feFcezWfts
	8Kti5zBIZCpCVUQr+A8GKNc8taZ4t5fKxoo+SS8+w9LMT9BcY5+OKTnSMq7LHKoQOVM
	IT+vw4wm1YKokYwKsN14p4xH9sXkntY2soS+6udw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652792759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7T3ogDhiipVZZi3fXgxlY8G2TNOLEbgWOatWI4KXzqA=;
	b=ZxB1thdoO1IWgLc5f75949BD3rpQCdjbpDgj4a8CLQkeXOrVtsTyUeBe32dEdYv3
	txQSbHg7Vr/dtDKP7bi7Ue0aCFlgBs5X8Znhyw4bYNzi6LxbqaKP9Md51veegAGNkTh
	FbUab2Wt/Rs203nQQ5LFsBlWFb9ECZ7+0zVYXpYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d22013e2-55425fc7-ec2d-403b-96d5-68ce501e21e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7ac20a4f16f475d94627a0ec8ae9a067e5670783b6198ea481f19863ae072d5
Date: Tue, 17 May 2022 13:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652792759
