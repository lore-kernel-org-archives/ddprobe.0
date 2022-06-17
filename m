Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F17AD7F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 06:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655445719;
	h=To:Subject:From:Message-Id:Date;
	bh=tbGe3uBtEUb3RrZTUQfOwAeGxdUQWb0zmZyz47KllgQ=;
	b=cf1OdvSd5lbJbadw1S9DrFCLIkhJTf6PuaJgJ2QxMwK7qqqIHXolq+6UZy7xhYeA
	AuxVOPWX6R4mRKXvCL3Hmj+bBkWjQqqlTr0sr/wOmzhJ1LYmx4vdGLSG3ZcVi7KL/hV
	L1xv26yvjl4oUUbG9KA0qfLGSE6CBmelumbWkiEM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655445719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tbGe3uBtEUb3RrZTUQfOwAeGxdUQWb0zmZyz47KllgQ=;
	b=FvRwz6/McuwTvPLtDCxrUKbKiXhWb4cr3HREm63c/lznP3iKpILw/d/kADC8O2x1
	iLGXDU0az3e5ey8Gek+lCBLl3NZt2Hz4+3oeQuTNNW9O2T4rmVG/+jzAUPIKZ7yXO1j
	ixWfPVK/Tub/9e7JnvBJemjuEm4Yl0m3RqcWJb7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181704108b0-81fa32c8-1111-4e72-899c-1d059b82df56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3f72d6ca4e822a8718591bf570643cf2fc67a8948deeffbe06ed8cb2bad0f0d1
Date: Fri, 17 Jun 2022 06:01:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655445719
