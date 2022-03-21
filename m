Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1521829A5
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647850885;
	h=To:Subject:From:Message-Id:Date;
	bh=L9Nws2iZnoCdhldqU90R9vkc0UpXKLqly0sIjCCutSI=;
	b=jWpXh6shzcgT723aciB4RSqfD+bQzzl1vJERrttKAY4R6rsYjHr4J9ysgQDWjfC8
	SLQyNEdp0NJ63Ouv2Iekqm77b9bcBz6lJ7dO1mZRXIYLdj/tnrXqnKmagH621RUYbjN
	4l+WlQIt4cxgLeoLr2wpkjMlvVFam7aepR2vnD1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647850885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=L9Nws2iZnoCdhldqU90R9vkc0UpXKLqly0sIjCCutSI=;
	b=IyxD6h3kh8ippCRP2Ab//MAfvdrNJLSkH5OpPcRtQFNDFikecELXj0Ts6PCdu5JN
	Yjuex+A4i71bAqU8UGbg3ljMosp/k30bu+nBErAelmm3/QTZy6jXmNKxtktTgiHinzE
	p7hFTUFMp6IE0BhnEcacdXkxLPwzCD9r+xHeD8Po=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fab910e85-7548c709-9b9c-4bc8-9600-f19ed6161fcc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0fd2fc58e1dddde742d9674ef752f15bf2a7aeebe6d0bfc526a4ca2f16d6b895
Date: Mon, 21 Mar 2022 08:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647850884
