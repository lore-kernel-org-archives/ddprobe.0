Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0471310F1
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 03:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655866859;
	h=To:Subject:From:Message-Id:Date;
	bh=PxAWb4T3nN429jzsLgzaVFko8rw7VMBKZ2+AfkuzabI=;
	b=lChs/kmhGh56O92v4BQKN0GgF9RrzQNJtnqSb+41bQWdrl5pucIF7MHDNSonBKUA
	iq4OVL/NW9oJjn/apF4XZkGJWpUT2SiNgtKrhgjALTEJt7kypBBWpidx+4LxAN0n+RM
	vplOtWFLeJpKfYOvjUw3ONrf20Fsyf5YvGe/OKFE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655866859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PxAWb4T3nN429jzsLgzaVFko8rw7VMBKZ2+AfkuzabI=;
	b=dYonvmUxryAbrrdul1GeYQ4pxY5bjsa7Ef8UMBGEcLnTHWXWw3/Ov39DXuMD+Tr3
	qr5xi54Sy/DGgmVdxSxhecLNWaeno7XoTJKcnt1UETzGx4yjN1xI2AsIJDAkHFn/lP6
	Q/XXDz75N8ed/89QDsUiIgsrXI9h4SeN861gCsmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181895b1ee2-5b1fed42-b0ea-4cd1-8f20-ba034ed64b90-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 627a77440054243b763ce5a8dd38408e5790a4eeec816f9bdda5f71e17c2e7b5
Date: Wed, 22 Jun 2022 03:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655866859
