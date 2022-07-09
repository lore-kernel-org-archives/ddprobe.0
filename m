Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5DE7E8
	for <ddprobe@lists.linux.dev>; Sat,  9 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657336612;
	h=To:Subject:From:Message-Id:Date;
	bh=gTia14GQBw0Pa7SLGQpGLE5EEqYrBtFyp4EFIpuBgmY=;
	b=YfRm99glKVx1o93vgsGb7w/PuNvopDjSUcp75VF9TszcuHjLSsC7qM5Zr4W6ASET
	hkZ4fkfSVVSwbnpqmSOd1qVUdLe1MdgH9HYTrfeOPchHY/tcEux6bHllf6hVCCtZo6U
	ogUcCSdQi93ANeg3s5n044Q79McUzlIxA1CA7q8Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657336612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gTia14GQBw0Pa7SLGQpGLE5EEqYrBtFyp4EFIpuBgmY=;
	b=KKoJA9zMZKpe1E+e3Ws9KZDZqfjYcKd7gaXQ5TEkhD/gJwCaxRKZ1LuTCW8Sqex9
	/0DhgnJfmsJA+kH+2DkkcmQHbHK+YCywCIOPGuKzJ0VBmfqDRceuziL12gUPT/UGcZC
	XWkkoelqNw8NMoVl+/7yicx7tTfuNPsGzYNXeHrs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e0f5c5e4-da9d5a53-59a1-4b62-a4b2-145935cf9105-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd863703526b5136296d0947145ee2a0d3da4fe4909868fcc17a4f2ef5b05ca3
Date: Sat, 9 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657336612
