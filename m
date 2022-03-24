Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B98D7E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 11:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648122778;
	h=To:Subject:From:Message-Id:Date;
	bh=5vVuQzLHsz+Mt9TI0tU+Ugxdfhf/PXRdUfvJ97Rb9/w=;
	b=dDwgUfb0UUmrGrs9PaDA1/YxyCnx4XPCLaIMs+F0Njoi9vPLv+eHhnMb03MrQtEB
	P9meWYmYQHdHNDVM4gIlctxsq0iMOgOLTbSlZGKrL59qswQ32Kv75GLPyrjUVvd8cIo
	YsVYVicuPaWcLBUyHUN4fY0/xlP11tzpAVBCLeyo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648122778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5vVuQzLHsz+Mt9TI0tU+Ugxdfhf/PXRdUfvJ97Rb9/w=;
	b=Y/sW3cdmctDgjGwGCNXCNIjJU6ln+9EaMdNLGGLLwFXd3kpejckeC/+TVNx5Xbuu
	BaVLhZRKltwYqYTq71xwejk/GqH+/pQ7peqAGh2ue8bnh50/Urr5wE+qVusle5S7AUY
	xyYr9jeMKRPUApAd6l7O/M8AkIuTyWfbhIhmFWNo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbbc5d293-71329089-0317-4a8c-a6c0-1147084cf90c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c37de890a35468e0d4c3d97a76c5398041280582fd09533e1620040342257024
Date: Thu, 24 Mar 2022 11:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648122778
