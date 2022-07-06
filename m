Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D45603D
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 02:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657073212;
	h=To:Subject:From:Message-Id:Date;
	bh=ruuo/BBbzy9EmTIhd4KA+qYlQ1MUqGi6lpuY1ZOGrzo=;
	b=JFGqywFeJNAGLTUadfdGpJemi0VTktg3+Oze+OepJkygFzDEyV+y9t54wgb1sYR2
	AXIEG30U6hYfttEBVk/9hGQb4PdK2jMzkV3x4cFZ3oC68UtbLSWKd9/ePSjslQcyYuu
	pMtUlwmpChhhwIrb+MDQ3Hq9WBmHlK6h1W+KKhT4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657073212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ruuo/BBbzy9EmTIhd4KA+qYlQ1MUqGi6lpuY1ZOGrzo=;
	b=G4IL9v10eUVUsVE7/oZZk9wZYVXM7U7sKjVgX1Qbi5G8Lvc1qpZKn+tNaFH1aviw
	1PLlUmEbxBh4tjrYJF4ecPMudB0A05o2OGetRDnkUg1J0joGDbMzX3yXuHQqyJjiX3Z
	WUeJSVH9SJzSOMQZDgR84ADROcR9vS36iA+yget4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d1429b83-5f40fd93-f254-440b-9e9d-f56327cb27e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cf494f669beaec521f50f24860919889a02e290f477c11faafdd4682da16da0
Date: Wed, 6 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657073212
