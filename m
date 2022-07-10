Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1057D7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 11:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657453612;
	h=To:Subject:From:Message-Id:Date;
	bh=r6cEvpJhjsBffoL1R2Wja/rEJBLOAj1bUHn1TzyxIks=;
	b=XZxQUjw0OgGIWdTHUL6d4z0W5sB0SUFv6pR2P+GBH06H0VvMb77oAzeeQDTt0uIc
	thTeDtLpQtMQNhpXR0AUZ2uuqgpEYa6pIV08LoSsBkpt7tUfljGAv59BpJrOQqsF/5O
	282bFGBTk2OwoLsV48Z/v0sUXfCNu3muSsODJmKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657453612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=r6cEvpJhjsBffoL1R2Wja/rEJBLOAj1bUHn1TzyxIks=;
	b=LHZac5r0VbJPeMShupoFNm4tePVGq0FmfcH+grnpBYvhMwmgHf5O6JPYHV8b+AoC
	tY3UB38hjK369Gw8uWv5+nQTfujc+wjAbkw5U5QZo/65KWt2ksgpxbfoawt/o1Zvr3c
	a6+GOMQoZ1MudzFauHLAFe3at9rxibEmnYKMsFGg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e7ef0d2d-4078bf1f-b8de-4e0c-b4fd-47638999cb4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1334383c022c6fca51595c61eac391e3167c42a2044fe4a60d20b9fb7adffd9
Date: Sun, 10 Jul 2022 11:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657453612
