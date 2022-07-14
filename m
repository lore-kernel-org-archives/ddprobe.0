Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5F3192
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 01:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657760812;
	h=To:Subject:From:Message-Id:Date;
	bh=dhB/VtfeIz5Xjdenr704oASrpUHNl5eUn5PzxMegOpI=;
	b=Vf/ldpWT7fErNwqx0a/vEw3LChTqd96oiKZSb9xdtSXuJ9CWtm7IuDEkABciKiUB
	u4i1eL3x/0bBUqCQY+peS2MPxQt2+IRgzQQyaHMH03UNg3Q9LmapytCPpAbLa4At9qe
	KwCy/c+2lMieOW0fOVKzLEXLDBMrh+6+dq/c8Du0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657760812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dhB/VtfeIz5Xjdenr704oASrpUHNl5eUn5PzxMegOpI=;
	b=VncZNwhTWMWgJGNtaNOpG37tGXcXN3X6UZQt8zKBh5Ee+Pf0I3xtGopJ2GW+TK26
	9HxUJiM13rVrDaB3zZrTzIFD7DlhFj0dA3B/sKleGV2z9qhgv2vcb/CVE4VxX7DWuqF
	TD7iI+nNxAYs9EtVn66DXqKrr8K6IcBm067KtNXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fa3e8d21-2b5f04da-0049-48be-9450-3250b2b22867-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c772cbe47f3f3dbf4e1d745667c990b6da1c0f2e9b344bd13516ff0ad1148dac
Date: Thu, 14 Jul 2022 01:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657760812
