Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC0006D19
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 21:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656625012;
	h=To:Subject:From:Message-Id:Date;
	bh=ddJgWZpxci+GyzX/B4zCscjSgYCo8FQd+r2h7Km6gIo=;
	b=DtG4b6NPkJIxAbnytwhH8EeoaR3YSfXVGU/2Wo6GlZEwUNWI6lkwmMwpkyGcscbd
	7k3nW28SPu3YZLLYQvsT0NchmZyzO3Y1t15sjkoVCf8oHgyyOYy+/BAj+HSMXXcoeIz
	fFY7BSfgUcUEObAcri5uZcdoSh0LVYVwm5Aa3pLA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656625012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ddJgWZpxci+GyzX/B4zCscjSgYCo8FQd+r2h7Km6gIo=;
	b=V1USOwoKp0pgCns1tyVnGvW7HGmxVKMg8DyQldl9iwQQ/a06s8XzIQKyHUrSWBMr
	PbGepRxDc+F2z3ggBEKE90Dx3au6fuPR6/xc1rbeMM8OCzNJ5ukB9Rt8LyMR97fkQkX
	ec1v3hhiKkUEeqdZqM9QnbJ7qsHLRo6o+53cE0eY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b68b9e57-21c10bf9-f3bb-4f9c-90b9-3c5c6da1df27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: de817691c0fc1347f6f7d23d12fc291858f6a1898262603ffacb1cb43a35f78f
Date: Thu, 30 Jun 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656625012
