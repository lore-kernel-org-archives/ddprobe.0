Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2621182
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660107652;
	h=To:Subject:From:Message-Id:Date;
	bh=sYzi8TQNHn2MdfZ2KWehAmhHtwwgOWjjXa2rcM+Br2k=;
	b=X3polV0YQQ10p/7KqDwG0tPcKD/RWXAjENuttan2wiqivjkCQtZ+Ze5lICcQ85x/
	doyP+f+SsS7RpzjPHEhIgAVHKlFSxWk1jvY37mto+1EUFU0m2zVFuPEyQ6wYd4KB/37
	ElP0sGojkd+ChX0ra/lCg4k5xIjHoWV8f8w/p4T8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660107652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sYzi8TQNHn2MdfZ2KWehAmhHtwwgOWjjXa2rcM+Br2k=;
	b=hCiy1RQmHNQuis+FJxArZ3IfQx0ZII2TAYNPcJuvod268jwUI3PHfdoD4VLuH92e
	cS+b5GVr9gFNeTkmtSZS6yNymejkdIsnhFb3+6bvF6126kQ4tZj9qhtTWsEcdgtUZPY
	detYu/wvVai9wUXj0c817ekS3TaAETO/15F52GMI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286207e87-2be49561-f481-4cb0-9181-e708a1838c1a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45ac02b94d21e49eecf23b39c9a4cf8e8d9af43aa8c7bd3d25fbe09fff62091c
Date: Wed, 10 Aug 2022 05:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660107652
