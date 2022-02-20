Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FA5181
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 01:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645321584;
	h=To:Subject:From:Message-Id:Date;
	bh=YXIaDG5yFVHH1iCceuhJ1oTMPMw9q8umDK2FQX7nrbc=;
	b=N+fVVZrGqLx1kPqetrznMURd6Znm9WnWID2MOLckJzFF2/pQIf8OAMHeExXXYKyY
	EB/8MU/qS3uLHqtSWr80RZKXgQkV2X20qqhdlWFn44nNhfY70wZl/67aS/X3txviiQB
	K+zCX3OECQI+gNJJYPHKfRt+9Tr0grGOUCmEz1Ks=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645321584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YXIaDG5yFVHH1iCceuhJ1oTMPMw9q8umDK2FQX7nrbc=;
	b=V6xgo9nBtQAICQQL2wHQu754TpM7CHc8NhHGYXHPQ/TJeNrsuLkP0qz2FJeTOPl4
	G3bws9A/ENilfjJEY9dyF27pJcC898EJGRQGsaAL7AMT3rdZ6kuW2Rs0G1o/I8GxZ/o
	vN9JjNUBcXt7oHFAzJ9c6lRRIVKzc8atP1OwpguM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f14cf0072-0881fc3f-d6c0-4db0-8642-c91c0131015e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72d36fef642fd979be2f901254e24a5a7697c6b29d9c8e596623bc72f02c7bdc
Date: Sun, 20 Feb 2022 01:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645321584
