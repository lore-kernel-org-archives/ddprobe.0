Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330DD3C0B
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658404612;
	h=To:Subject:From:Message-Id:Date;
	bh=wq5yzzw8rbCWSDGn6tY5b5gxUhUCuMQ1RGp7U+XgF5Q=;
	b=a1PPfkuELtLYv/FS0TEe37BIJtDRYOTt3bzJ9UyGK9RgCJIY0V4JRDpuNFbI/7bC
	hL3hzvudjbQ0GPUqnT3byd9TtXR6Zr65XDdpQ422RUE6IMBGt+p+EiKrixxJTwcJFWx
	vWZbmup8UnbXm6IOgGHX4y7idVIUcAp51nfmndzU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658404612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wq5yzzw8rbCWSDGn6tY5b5gxUhUCuMQ1RGp7U+XgF5Q=;
	b=QUAT0G9YF6UlQihSiTPIj0CmDwiFFOHopG2gcNUdoQXAvAgkmII5uMTIkce530WE
	R112WzpTqCLIcn0MlKDxujeuNDjHJy1E7eITL/XQ2DoLc0wXREXUpESqrFn4Jjrl7DG
	5EgyfU99AQDRyutmOIIqNysowBluH8H/J2/Y6vmo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182209e289a-9289c781-b4b2-4542-a784-e9fd7eeef2d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b03d37a98d23f8fd230ed75d9e96a672672cb3c9e5a70d30fc39091c06e18db
Date: Thu, 21 Jul 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658404612
