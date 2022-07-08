Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2377EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 07:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657264612;
	h=To:Subject:From:Message-Id:Date;
	bh=U5oaKFyOsU6tLXzV5bfRBPLdrelsld7Tu17qAxPs60k=;
	b=FqISQocc4k24FJXBGiuzTHZ+lymi4bzoCtMu8WlWHf7jrTe4Kfd0KKLfqvfRSPtI
	Kw9uNaDFVe4A4NONtYOouyQxb7h4A470uBJVURUBmAkwm9AKhEBl1d5dS3bWLRQjRmr
	f8Wj658gYPjT0U4A2RRpTAfcTVPcRJTmjf7B2hXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657264612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=U5oaKFyOsU6tLXzV5bfRBPLdrelsld7Tu17qAxPs60k=;
	b=aFdN6KR9yAEXjBxHKclLPmjzLEdn+d24vbzdFLzNAV4rTJSfJGAh9/DMn/D2vT8N
	h+IcGeECGmO19Y7RuNPPYgAcK35qpjOs76Oggtfow5IKmntw9rodSSitT3UfhPXeTJI
	CM7scDKb5/WLYR/eoXKLuCvk4X8n4YeU7W4cobF8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dcab23d6-ae7a23a9-834f-4d8a-95c4-56e079eea5a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9a7a0625048f9e75fbf78867e76c31d5943e8df78d0e06b2d2b4cdf711a0a32
Date: Fri, 8 Jul 2022 07:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657264612
