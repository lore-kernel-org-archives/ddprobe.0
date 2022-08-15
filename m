Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09C4F10E8
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660574453;
	h=To:Subject:From:Message-Id:Date;
	bh=UKfYbNWX0QdbsA98NM5LFSHrB9mtdBOsSFhhWyhzQNY=;
	b=lW5CWihqmE7TKq3ZvA4c9eEGTC/GNv/Fym9ZMkyOy8aqShfWT+iiL4p2YS5c4SMS
	AEgIlsTlSSTryMCnyfYBVwEgBqgU2ryqkjaBVOv+yMalpvKoOxcN/NN7tO5iAM1vCf8
	QeZJ817UMpYvFrBnrDxOM9faNPNIXrjtlmZMnaxQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660574453;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UKfYbNWX0QdbsA98NM5LFSHrB9mtdBOsSFhhWyhzQNY=;
	b=iTbs4WDXfY+kwK3o7t+hkSXpqH9ikPDLYl72KIJwZ+DHr8GlZMDS/+At8yGVuHEg
	VTAuXUPMR7j7eOiiAYVvL0aPgNMmPui3JvTLSS118nW4iJ7epKu9HwXA1OJb3SN2jD2
	8RP1Z1t1FAYfeAG5bcBGi/x11IkD7ubiMcwZgzto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a1f34c09-6036ddfc-7b06-452d-b8e5-58b404947eed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 35dc404b3ace97eeade8ba53494851c787e72a12634b0e2ac645ccf15ecca9ed
Date: Mon, 15 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660574452
