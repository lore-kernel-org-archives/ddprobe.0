Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A9D36A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 22:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652569199;
	h=To:Subject:From:Message-Id:Date;
	bh=Wk+iXQz0LTWqgA+2+kep5oq18dtpWnvUGRtf2bldGDQ=;
	b=Z/+mj2Z+BEA/XXC0n0lal9Dv4KljvOlIrVeTVqEu+/K+UEaanIyBcpfqioZwbiDn
	hb3cp1/2pqxO7cKCaBwARbkIAGBQiYpEhTFYTyCrr2jaC6KIDYOmxanj+Mep3S7D+/2
	WP7mOHAt0MFnvBsY58wQs7IeCHdviAo1pj7gR4rw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652569199;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wk+iXQz0LTWqgA+2+kep5oq18dtpWnvUGRtf2bldGDQ=;
	b=NnTUoY2DggzwwlfID2WojgmU+wDIDiUlei1uK2BqoL0BtJGDfj/r4oZtGSwshelL
	e379FCEzvug510DRCB5pIJ4pj3lh+iIHX5/9GBPqU5xXOITXU2M6pbOl8mQFTDfwGkD
	kyzLTOKmlfodI2vLk58vXKsv1ubnbTGvLgxXKtYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c4ccd2cb-880c092c-fdc5-4f2c-ac02-5dcc426817d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9b63b971b58c03eef47ac0c9b71c38f9fbfba1393ee723f7ec873e60fc0b8f7
Date: Sat, 14 May 2022 22:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652569199
