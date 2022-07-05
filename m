Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 478AB2917
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657052212;
	h=To:Subject:From:Message-Id:Date;
	bh=a+s7RA75GIdPt2+wzwgX4sxFdOo4B5hGgDQGsJk5wZw=;
	b=dhBzcNOnD7a1L6f3M9nnNXvMOJ6RJh0pAPX9YKBe9V93tgqKYlNclr2iQYj+mu8c
	Z1tnpolaaPaEim6nRP3t6M9yC9u36vvJGXgIIpINP84lfsnB0Ie0lVHQy/VIFao+mMs
	3Do8JhtueqKw3gVtfpInnpyVsosLczt6RkBYdZF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657052212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a+s7RA75GIdPt2+wzwgX4sxFdOo4B5hGgDQGsJk5wZw=;
	b=aPNs5lXtas+WNIah+kQ+tvIGAscB/3zYrCwId85rnqYZGD/S63cKTzv8m5TdEzXW
	mRtFWg5B1A6F8OhLMDrxtkY5979cqjA88iedHBRLogigpwTQAO6RnWt+t8oVH0qqc1v
	e8pw1rC1xe128kVaxuoN7JU5S+vfR5ovJzmxjG6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d0022ce1-ba7ac2a6-01b3-4a33-8a86-016a3ba4ad85-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8b0e0d51da91b20ac19fbc2a3dd68714d0c8db0a3b0b3136859ae8913137f0f3
Date: Tue, 5 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657052212
