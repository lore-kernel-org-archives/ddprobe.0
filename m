Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045CAA2D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 03:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656560212;
	h=To:Subject:From:Message-Id:Date;
	bh=i93yqUH0ehV7UJzU5FDbszSq0MyWpaqFm49O06iG+K0=;
	b=W9LV681DMb1BblyRqIll9E2HzPhV8L9qWYgsxdtZEf7vRf0/Iv0xYXwWbtEH3CGj
	++UYG3lF/JQg+sH0lNGa1+SRXYXcJhSs0TSkcB/E1Lh+GS1ycNgbjbPmGiWmezU0ZGe
	/s+DwiCeyFiLQkXmLyx15dh1gVXCEpZVARa/opI8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656560212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=i93yqUH0ehV7UJzU5FDbszSq0MyWpaqFm49O06iG+K0=;
	b=UPlrpLzdd6+zYIGr8kwaQJu9OlBxaO5+mwv3nm1XO1YHv/D5f32DjuYH14t6bsDT
	TzrZKRBYlzRXI4vkgLItIPkDq0jUCGu68J1b1voDPa+ZtbUYVEsMWOHbTYf6efglpmU
	1cpRbBxxC9fcKf9UqS2mXkCtEbC9VAhHB21HEvQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2aed94f-e89fe7e9-508c-4cfe-92cd-9e58d637b8f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df4a8000189dfebca967271da389a9fb8ce867838c6a73f03d54f6a1060723f4
Date: Thu, 30 Jun 2022 03:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656560212
