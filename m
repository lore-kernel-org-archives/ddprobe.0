Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AC062F2C
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 20:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652388839;
	h=To:Subject:From:Message-Id:Date;
	bh=zpSzfJqa74eqoBWiRvUvhHSuW4+vU559RMA+A/l4nhg=;
	b=SzrQP5PnEkrlBAVeqW4dm7WJjVf5thbVUmgUOOob+qB5nsPAXTy1f/hJTtofLE9o
	1l0+EpK4TjQP8wUqPhntiFGdtbS1vG5HbFS+BKHbB+SOo9kECVMjFxdqdnWiKVFn4Il
	W0uZpDbW9x3XucwgPnQZz52gYqHrDvgZrdlbidnw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652388839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zpSzfJqa74eqoBWiRvUvhHSuW4+vU559RMA+A/l4nhg=;
	b=LbdUSGgZI090FghwU0ZDg/zuefpbl2kQ4Vzz23PxObu2zB2iSo49zW3bFJpqOqN0
	gWPfemwl5uZwBUT/Ve7TQfXu1HZF+YZKeN9DE65kF/kCHkMoI2Ser1zh4+Z9pXXMUUc
	t3pubc7MdVAu2+wf0lX46DuHIvyB2/XJU/M/+Iyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ba0cbf5c-2abd7437-6fab-471e-9d3a-6a11c06260f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a3e58e2c92fd5a998d4b18acc14c3e92fb514d8995ac90a8ca6c426b97c700b0
Date: Thu, 12 May 2022 20:53:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652388839
