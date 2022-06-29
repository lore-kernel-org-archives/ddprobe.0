Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E6C6AB4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 19:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656531412;
	h=To:Subject:From:Message-Id:Date;
	bh=GFGAcmQog8isSg8fjmDu7IiT8faCcFlGqdACxC2tC1Q=;
	b=LPy6xBHwchkXDe+oCvrQabAYMbQEfRnlEYUzsocV27dBlHjNDfysdZzcFZvtT0oU
	1ewPQphfjzrp23OhO5Kkui6UX7ENntfLKiwrVaROpcEr9SxlMVQ9+vXJb0jzUQx5YUL
	WpmR94tJjPbr/xNnFGwP6sRNYzrJXOmZnRB3gzSo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656531412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GFGAcmQog8isSg8fjmDu7IiT8faCcFlGqdACxC2tC1Q=;
	b=X/9Eg3GEpX5Z13QpHukkfQs8mlf18AdE77t/B4f1sRjQPwvS+x14ko773o5itKlP
	ZZNTQfRTgpWTAYguVdjposSpbJA6L1GoFH5Gl5GCcOiXnbrPUEBRA/OpuoSR8S/GGxS
	y5iHQkCKdELQ5Q4X0qk3mPU84NNJcvGbnBRtk+IU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b0f765c4-912b1c13-58e4-49e9-ba06-9cf9d78cdd6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 58d0b1f04af34000c969aef6a9074d24b8df468262240b7437ede2a64cb78c75
Date: Wed, 29 Jun 2022 19:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656531412
