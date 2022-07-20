Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 053451FA7
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 03:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658288812;
	h=To:Subject:From:Message-Id:Date;
	bh=h6kce+vdJkQVRjqa90zVwEgWuQh+lyN1iENYGBQO+f4=;
	b=P9mWlZCGmz2osVCbgetK6XU1jIwbD/JUuf2D+IvORqEwuj0OSdmCXZ2ucGEJsdZf
	16Q1oCL326BZhetNaRbZvG+HfJofSXtLrv3tfzHCLjczBl5RmIM56chDJwtirTTmaWR
	mBuGULmek+7RNfi5KFr/P+mgAPbocBkuW9AE+Jys=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658288812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h6kce+vdJkQVRjqa90zVwEgWuQh+lyN1iENYGBQO+f4=;
	b=OzlF3IwEZRvndKV40230n8xVsWlPJyqAwPTje/vwFjBeOBjmeDOeO7OQhn+zsPP+
	Di5Yb09bqf7jJP6Wc9DGTXZ/EsQU/eNNmDVs8WsnbtgQlyE8qStDquLiGKtfnbCBx2W
	4VPZg/3gzkyLuTiSXxou5A4kWgS/4Lswe+LnAcjA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018219b730eb-9e30eb9d-a8cf-400d-b996-b2ca220158e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd3961001a5b2eb441767c4a2262762718816e58a2055ff40051082df625f8d6
Date: Wed, 20 Jul 2022 03:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658288812
