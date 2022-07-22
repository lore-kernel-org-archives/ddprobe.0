Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A91A28E4
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 09:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658481412;
	h=To:Subject:From:Message-Id:Date;
	bh=CQwuHXnet/cCXBcL2rc7zKtfsWdoM3KnbCAsoruB6iI=;
	b=cypqgBT9EHT20MOAhPDa8VhGOgxXX/fHprHUIHPqsXx9bPWO30K0m5jyXWZpKqF6
	aThaPjI5aBukGrFKU3dxCSQmiCGa3ST1Zu4UfsXB0NHw8/QUG/Iv5YQAr7xbtxJjkXn
	Ob6dSXcTMsHvZEsYuP2hrlqZDz1HLOuV6ZGXeHtA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658481412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CQwuHXnet/cCXBcL2rc7zKtfsWdoM3KnbCAsoruB6iI=;
	b=eTfhFzl1JCwrzmbFIR17dUFHnMq1EZ7j9XemvQQHzLtyJMqyAxPcQxCbL04n5icK
	X8kc3fcXPXYJjhfPuXjjvesjfiMDiDD809a6Qjr/UsX5TuOHRCzB/rbJ+ZZNzfAD/y4
	l69czjIvqRgnmZUsG+p/k3F2B6PelifRiARgjFuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182253208cc-7bb55a23-8510-489d-9436-be0a61d2a77c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6be5e09eee05eddc2f109e1e63c0d392f1c2668753081c08bd3c6593be1b2334
Date: Fri, 22 Jul 2022 09:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658481412
