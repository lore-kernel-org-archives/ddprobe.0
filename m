Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB72320F
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661197252;
	h=To:Subject:From:Message-Id:Date;
	bh=oEuRgLAYg9fzNm8tXQTOedFah7E2NvDc5BFcMnv5sxk=;
	b=DP6wbrBR/Qd2x+CnhCl2OyyLgezLkRNUcAL0BgAPB29QC7e3MUYp8uMLfNuqHD/O
	AmbZwUU4aGttcTBAKCBNtIPA51EZmKn3AopnIaUmJfvCplj6pGgKHEjFyCHHosqvhbi
	WQ7VnVjp+MxPgoADD7GnG5ryqauTEVnf7NefXWWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661197252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oEuRgLAYg9fzNm8tXQTOedFah7E2NvDc5BFcMnv5sxk=;
	b=d59qVIxTgQmtXFUhpGT5d+X/9xMmKcUhJWgW/ZOqnLwwZpxWtuL/Y7hKVRIh88L3
	J2zXVY3LDV2L2rhfbTMXjHagfnBjgaxTMFquhuaqqhBDgp+gZKSr/yBEBKsrtw/2yTp
	TzZ+2YCF3pbPlZOIQqMeoxw7ESYgYB0EetDhBqUA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c71277bb-b63bc59f-2af9-4f0e-9269-f40a0b406118-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ac52a7c291a3c93259b68b63c3d4e5418f99df4825e8dfa9560c99a5ab6571d2
Date: Mon, 22 Aug 2022 19:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661197252
