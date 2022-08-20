Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E59A360
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660998652;
	h=To:Subject:From:Message-Id:Date;
	bh=lQGNUUOJo6ZCLxj4AmKZk/iHjJVxmCWLLkXcgCOn17c=;
	b=c7z0jrOtX0HZ5bTmAPK9efGGBRS1w781bCnfogWXJttRv2s+4r6aMPIeSe5G01gM
	/VwpdQ+QjQJc4x/LmCV4WKsaGV7n4vm3c+peE0aEjz/iZw8W5IDI3CpI91Cdr34P4Mz
	WwC/MGvCtP+Nb/nLXTBC6PAlYz6/raC1TQf+0orU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660998652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lQGNUUOJo6ZCLxj4AmKZk/iHjJVxmCWLLkXcgCOn17c=;
	b=A4Mz+NNDzqe4ry3glt9a/S/96FZbmQ/o1OlK0zeR4MmHqV151sKkQH+Gp25UBZzK
	w5YQbUuyzBt2DjItVbQXNW2yBAIIJ6GeF8D3vlJGusdm4thmjMiIVthLQpJ0swYQ0aR
	WCjQJQg5t2vlNNV7rEn9uV3ntnWqTF9w9l5VOqx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb3c129a-fbaa0c48-91e1-48dd-851e-8ba94751b164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a143890bc36b1c87a17d5ca53e2c7935fd42ea0896f52919d3192ff81ce401f
Date: Sat, 20 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660998652
