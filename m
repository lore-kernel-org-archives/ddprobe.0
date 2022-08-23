Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B0C45A20
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 03:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661226653;
	h=To:Subject:From:Message-Id:Date;
	bh=6sBNJdiQ+mZwk1l6Ynsmv24tNKUSAVaLXh4tOAb71Qg=;
	b=aRLiY7jCQrg6Oh53sbTwsawIcNPVYBvNndiZxinNTdWw+6YghcRh52FUAnEUxzlO
	NE1dyoJVXiGteuf8KK3gHLv2cJNX1Y1N4EALAcyXx0dWEs7nTKOdscwp03FenFkj8yh
	GjJ4N8Hj/7pr8K8ItRsqGNb1fVQQKwO7Y1Nypm38=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661226653;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6sBNJdiQ+mZwk1l6Ynsmv24tNKUSAVaLXh4tOAb71Qg=;
	b=CFEkehaFGGabCGnN+KdDnkhgqf4ALXWv8LSJWtFXxUV9sU/uxGaF48+3KiOYUmSw
	cEl8sIPqLMjFkaepf62uckzgseWLPm2rh3AXkG3o18aKy5TKywwK0vdsrifNIcqp2vK
	9YnjGiBSCIMVT8ODUUqHdKN09jPhaJ11q7iCoAYo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c8d313fa-e38585d9-d792-465e-8be7-4ccc9df6aaca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a99da6fa1cb4d12f3de9a056fea9310f3badf9ec6cefed8ffe7ce0b42d69b7e
Date: Tue, 23 Aug 2022 03:50:53 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661226652
