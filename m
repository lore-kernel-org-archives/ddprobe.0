Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46F36366
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648600738;
	h=To:Subject:From:Message-Id:Date;
	bh=mp6ydFO/SRZlEodwJrF0lCqyBVqhiawQK5mkDYc9k1Q=;
	b=kA19j6h29nRKKUPTdHpCN7xslNsv3RIG/n/mtPM6x5rb/JJYWSVhE5n0bG6RFvCJ
	Wzd2BXfNgGPbq2wioIjjSYdI03/FAsI8HhppNzFxszo0lbq17pRTHAI3mQ9wD3NFrxc
	haGnEB4Ie8KGVCzy1m72sdy3p0iMc3DzTex8mQJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648600738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mp6ydFO/SRZlEodwJrF0lCqyBVqhiawQK5mkDYc9k1Q=;
	b=MnNUlp4v7aob8K0Jz2NCnfMrpZUu8LXcSVIvbqoKIi80IXBfEsKK0RMRgNqNwUem
	aOimMn262Zc0nqKFv4TSOWyIPEQ4YLt5Tl+SR0GiapjNTUz/RDIcnGW+vOVxIEX/3vI
	oMbswutVrFV1Aa1cytoG0YxTHpGlvgMoEdIfTbdM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd842e9fe-7662829f-6a96-427b-81c4-4eb964497ded-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09bbba6e8a5a616b89cfbf98db581f16b2555ba7d43392eb93d47fe2d3dd550d
Date: Wed, 30 Mar 2022 00:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648600738
