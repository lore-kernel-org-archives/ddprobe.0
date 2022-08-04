Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7287C650
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 06:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659593452;
	h=To:Subject:From:Message-Id:Date;
	bh=lF+zX29dN2CSgZ2Wr9xZkiUo4c4pzJxbXOWLU9VNGsM=;
	b=TFZnaw+x2K3Twsq2uOCFhZEQRMv/LRGbAgfT63DJYdCdZ973j+hByBGNdaavLXQX
	dizWKOuEOMioptXqaJx1J0mCJzKGXEH5D0bGJdYFVt/X0VusmI+xyFc1Tvg1N5mZqQ2
	52n/B021kz8717Szk9PlhwtPE5hi77hWwUXAZ6t8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659593452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lF+zX29dN2CSgZ2Wr9xZkiUo4c4pzJxbXOWLU9VNGsM=;
	b=f/p2sQKNKRfhJvR/4ZHbZcEuzHgPMdyGC8BFXjtneDFsW1uwxMKgNCTP+3TUR0Qc
	9RDp1yF7Vg13pCGPz8+NJ+DvBZWxuJ+Gp2cXl2viNaf7toqIBmtAGDfN0+BQAzOZ/AI
	gqZYa0qdGFaKcp+znVxqV0g5ZxsVpkw2T/EfFGac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182677a6c36-173e6c99-a4b1-421a-8e75-9241a5b341f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddf7b0b22aebe3cf08859556a263f7ce415b0870a04ef76dec4dd33920d721c4
Date: Thu, 4 Aug 2022 06:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659593452
