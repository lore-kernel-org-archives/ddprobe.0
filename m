Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 217482F24
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 12:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653134879;
	h=To:Subject:From:Message-Id:Date;
	bh=MwrRimTjBZFqZwqeFJCGxqmjbIhVMQ8gxzbyDPgCX7Q=;
	b=AzUhWKKVAELONarhNCOl6yvv38O3Chz9hgT9bedm3mMwIVBR6huNOleDXyNzmXGm
	0qeKTDCPyoITjaAVHlsaGJBnUa4KD055fIy+OZeiqBvhQOTE3LalTtbgxhrAeKoUhqI
	pAk1peXU9gzEvDytj4g6IGf99Z9S/osnhVQdgL30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653134879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MwrRimTjBZFqZwqeFJCGxqmjbIhVMQ8gxzbyDPgCX7Q=;
	b=Sw5aPA1jJSrUtUFgomYN6rSHRGQnD2Ja/Wzuf70bI6b8brUzEHbHs875Be14l4L7
	iOqM8dfFV/nh90ehHGegrKwXrLrZDJ1WVxDGgf4wNZhhFcBb5w7Nx7qb+X1mHYWVRUl
	RibvwAVG4ebOa9lGMP960kkbisJyjdsFMmzi4+Yo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e6846a3d-1d5cd17c-f2ce-477b-9858-acc9a634da30-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df63803e5222a781672143a2709333134352e5fe59dd062e0f608b6fda0fb304
Date: Sat, 21 May 2022 12:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653134879
