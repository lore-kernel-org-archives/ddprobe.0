Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D647A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 21:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656277612;
	h=To:Subject:From:Message-Id:Date;
	bh=9/RznsjjkczFWWBY+k6qhKZ0gUYhVSY97hMB+H8ieDs=;
	b=Bpf7ZrG5dPZ/YIsszgjzlvzdsC78nvE1ZkObaCHkqpLg29bxuJzJ4cRigjq9lxqv
	crvdfZHdKsg4DBJz9qi04BbiTWYZaphtyOlmxpUf9om9Tayk91CG+m4TbIV8/Bt3Erb
	61NO0hkdgRKSfwu3sYlD2Wl9vyVJaqZXpQ6arucQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656277612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9/RznsjjkczFWWBY+k6qhKZ0gUYhVSY97hMB+H8ieDs=;
	b=eWBjcSOnoscWNdheS9X3AcbjxQV2AfW9PSLhf/lbnd6tRpQNDv4/9gp19Mx/Us5U
	lzecP3JEvqMHtJqkJmwd+PSoDNgyKh0RJJkY536suuvdpbaGA7SHdBTcS+vjk7Y4gjJ
	de+Mz868WatfFqcF5vYRY1SYWTjQsg5hQibohpQA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a1d6b700-1092ff02-8298-492a-9024-54bf6d5b5591-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 992837092460302e5c1ad3242c036f1c896ccd4e5b90b8a3721063e79a5155d5
Date: Sun, 26 Jun 2022 21:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656277612
