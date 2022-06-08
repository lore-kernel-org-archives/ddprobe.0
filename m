Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C4C87C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 07:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654671779;
	h=To:Subject:From:Message-Id:Date;
	bh=Z+tD0zx/+sYCC3+mkho8gPCN26z9jEdPhGk8Fi9RN2E=;
	b=bzb9iLdJ5T3q4Ymu+J6v//AbGzVOnYtFygC3MLA4IXWMt2gWMmMK3tKIJg6O43/B
	TE+fKKeQuadyfjrpupmggCvn/IerkT3MtAHf8QBjOQQyvq/FZPrSpGXZuPl1QQh6Egr
	0z3BVglNfUVYQWAXWgmq2ldtQdUdaeil5HVUxjWE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654671779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z+tD0zx/+sYCC3+mkho8gPCN26z9jEdPhGk8Fi9RN2E=;
	b=Pmk1jDOFnuEqIRmRLtx5g0fpFbOGFVN3AKOgYW0ASNig/3AopJR1yP9HcZ0d9h7n
	b9CAK0kH8VOggl9AShQCxodxpFQhT9J190MpTNmeTsNNR3xOHeyOeAPZdEoh4dFH7Zx
	kKf3f5hWj/fPd+kf4HeJQTkbudAYhJzLAgtzldh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181421fa5ce-ce983c96-68da-46a5-9edd-c3a8106cf9bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f730153e5bd857004185bb07614f5a0ef66df419fbe6420475791645ff78810
Date: Wed, 8 Jun 2022 07:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654671779
