Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 287E77A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 09:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657877212;
	h=To:Subject:From:Message-Id:Date;
	bh=U9V3io/qsU7SPm1noEGYKRsghM7K8CgMBRYJe9yz9WY=;
	b=VRb2jlKZUgT2RQUOFGDpxdwBBmKXjGWFRGqoXgFg2PLumNSsFaPaJh9e0uXKRCV6
	RKaRuWmpSVvNi9HkhbrZBE+Ov9yMZGsvjVXfuRa5gD90mhyfTihle4+hnumCrqbxPt7
	1t28m9HoYOFLddHSngYNJLkHHs6CAKuA9dEIe2vA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657877212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U9V3io/qsU7SPm1noEGYKRsghM7K8CgMBRYJe9yz9WY=;
	b=S16KvNMOjTPjuL3ENDCSxOo2rKrhAq6uA0c41jRCYrhKNgfef/wbONSQIKJ5fnIt
	zoGp31Gg8YNxMFLYiyqK9BMACQJaQ9gMbVtH4H0bN+nVjC/8H4r2anjncS63XIkQxmk
	jAZkXLApB+0sCUWckoTuKgoCak6jwlRTkm0mJs6o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182012eac85-e24b539c-0f0d-4c15-8135-ea38dfd84b8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ba4aba388a091da2f4fe0e682b62859decf409648feba2ab247d445759088ab
Date: Fri, 15 Jul 2022 09:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657877212
