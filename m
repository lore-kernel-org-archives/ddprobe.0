Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A872560
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656767812;
	h=To:Subject:From:Message-Id:Date;
	bh=uH7q2XbOJmmMRJTT9pcjevOu8emhxIfNfaqGt7YWjHs=;
	b=hwn8zUVkn869IOh8tHLNdlr/FdReUXn5Pqgjw7D3GRJodmY1X4q8ueezD/YxgmuT
	IgbjjgV36tQUeIQQJXEeUgifI4Mel1ZwRb55uGCjeJlHjqebu/6xZ9qT/44fhPnKw/+
	0HZ4IyomVY36lsxWwTHxECSkvOFhbDHXW1JeC7/g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656767812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uH7q2XbOJmmMRJTT9pcjevOu8emhxIfNfaqGt7YWjHs=;
	b=C7fzjg0++fndXQjH25yZQPmRzK2I3dgvefZx1SyvcRpZVy1uRnNwBm87SHlE1+7g
	/aCM0tuErmzO/qbOKluk7BiFVTCp1RMOeunkE9hxj/NGX00wn2pSDCwdgUvJpI9s/L8
	EHrqksf0ICtf9J8bkJiHqQ3AOPcN449HOUgXT+8g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf0e934a-66ae935f-281c-4639-aa88-6a2c6d33126c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cfd3986ad3cf26f70ba761dcb0df5cc1f72c9f312325f8d4a8a8fceb5f46733
Date: Sat, 2 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656767812
