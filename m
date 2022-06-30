Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DE643D83
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 14:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656599212;
	h=To:Subject:From:Message-Id:Date;
	bh=+gziVlkmaFe22jotemz8vV7KCVqxOz2WOREyvQomkcU=;
	b=dnvjOZsJlYbGucIy8VO35Su1znSVr87agMV0isp8rLZLV2p8zP9hDKZnesI4SupX
	28CjVenTAYZUt8Sdtd51qNIV5xEGLqihL3KaTCd+TUYLf4hqyLLgTsM5ibDOLIRIwQK
	fyqbrhat2iHdmcAkqygCL6cF092gvUo7yN/X0R5s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656599212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gziVlkmaFe22jotemz8vV7KCVqxOz2WOREyvQomkcU=;
	b=kQyA5mHGv84VoZ88NqBlZ52DMqeUG5/MU3OmSSpSAb+IpWI0EHY0C044IeXfpWJH
	ac/CJfxsGhKA4tr1s+fpMBz1FcrZJ6FZfHOPMXJDiAvNuQhTz2R7WRLlB0qJ4qUIC9P
	H0swlDow1suBOUJZUMV/k1rgw9KHczsfZiFylWDM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b501f12b-865320d9-2816-43f0-9f31-6999bc8c72d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0a20f85be46f2d5d300280ed5a3a0a9a91e6ea19d9b144e6f1290f1a3a92886
Date: Thu, 30 Jun 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656599212
