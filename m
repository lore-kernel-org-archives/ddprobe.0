Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2D336D
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 02:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661050253;
	h=To:Subject:From:Message-Id:Date;
	bh=eigoLyUHuL98ig8VYfi5JUbJj2seaQH1/xuL8xI+lH4=;
	b=ZWiSHKbwF/kA9uQAwP2G/3p8IB/hiJYzu/D+5vaSeaQhIuU4kgiI+rSTQaokDJvc
	EhDGERyjqY8or9YLXoO0nwb8eUEEoW+KJvHCJa3fV/g2cSznJ/jm3n31PCB8j/62wR7
	8qQEezMWeMmi2eEanmJKGkzZ9D6CNJJPlKjcghOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661050253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eigoLyUHuL98ig8VYfi5JUbJj2seaQH1/xuL8xI+lH4=;
	b=cJcZGLwHzC4x8bWl3qcDZ7lH9LYB/T6cJGDmXe58tN0i6YT6eJyLyfg2etV1X895
	Yf4UgV/Z2AkgNbtMn7CKfigQaZjJSA21vlW0A9YNh95poPffDLLz7sJmWpRU/0hzb0e
	5ORWfQ2e8nDXmf1Dto+yfuskn+2DxaRnPrDjjiBw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182be4f6d10-92fbd719-3917-4f0e-978f-c13431259372-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 584698c435c6673dad856194d0c63a1aa9c5fb27fd5e3ef5d779634fa8cdc5a1
Date: Sun, 21 Aug 2022 02:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661050252
