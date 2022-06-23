Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1ADD43E8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 14:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655996212;
	h=To:Subject:From:Message-Id:Date;
	bh=5ks7Lzbr5+D4jR8w72o3wEjSI/LN00DuFONumEIeCe4=;
	b=ZcdIBhJOwlRPPlwRPHfnHviWaDgHj8VJjs3xBKQchT1B09Gvq1+lfcdNkKideLdd
	5UnhK2JhwnvCAsTNU1oq6PWKaf6yJetCdbKh7yIZNQ1VyKFOHfbhisdlX6gFv/74UWt
	uf1vFd0oqolGAiK6zNzDwK5LpIYTQ8PhzHJy/dZY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655996212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5ks7Lzbr5+D4jR8w72o3wEjSI/LN00DuFONumEIeCe4=;
	b=YWIA3RfrUIRsEFsg2V+0WtHFBSbcVefrze44I+qe41sP+optKKb1o9BvDm3SWoTC
	SNqOycvioRqO7XfYY5Sg/eVVnG30N3R2AwmwDd5faUr0cfve50KnqzJp1hkgZTaSvyn
	/JeHo6s6Ybf8xAImW+bRfAjBfFxUAAparwXhN85c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819110e457-8cc287e0-a60d-4071-95dc-bb067e8c54e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a379488a06d24e03953a66a1e819af599298036e1f7743cd1f9733f43fbc402c
Date: Thu, 23 Jun 2022 14:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655996212
