Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E5F3A20
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 04:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658117812;
	h=To:Subject:From:Message-Id:Date;
	bh=Ww4d/U/vQDIAAiCS2jBjISnyewxmQF8KkUkYaUPWT0c=;
	b=PJlUYoxK55Vg/boP/QgjSvhHBA35YBb2ggGPJsjjR9HZc9JvWhvuZGhJayye8UbH
	XVJ9Im7A2vJ+4r35nBryen24kHM35OupXyw6oAKS4F4A+/JHOT9Wj8gA7Y378zK6jg6
	vK2q7N1hWMCCNrY6o7Dn9V+D89TecK6r5pFNIhFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658117812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ww4d/U/vQDIAAiCS2jBjISnyewxmQF8KkUkYaUPWT0c=;
	b=N+9EMZAjvvnScFTVie18l8b7IVSkSVSsxCCX48q7e+u0FmMKhabQCHVSnjiHDcTu
	iPg3PGW6CtQGru3VcvFad/rALnBgmpT+2m2heVSbTwmquvcfMTsLB7NTnoJETPPxxb5
	LVVHANe/msUz5tMktT9YCQ5mfPv6F+oFgO5aJi6Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820f85f076-7b019778-3ac9-41a6-81d4-4485da41c2af-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a09aa64959c906a12e40d64da720e458664a217248b631bc7a2fb745d92a906e
Date: Mon, 18 Jul 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658117812
