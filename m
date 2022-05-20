Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 258D37A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 01:00:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653008399;
	h=To:Subject:From:Message-Id:Date;
	bh=fJ1Cu9msap0wLMk8DslceDcJJv6zZMTptNmDxPfUP8s=;
	b=bGyoC9aSdAqgbAUHUQ1tRlMPfY9hmft0WWVIViCGe2MKGzpufyDLx21kUPlKaMe/
	fhdKSaFDdS5Ax6Xg42GXCfuPvCW6s8i7hwKr+xRaoxlqWpHi8jPZc2htCu5dbiMSaQT
	Ss0kVY1WHp+HC5IWvxoJZiGRdprZ/LYsRyTNTh74=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653008399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fJ1Cu9msap0wLMk8DslceDcJJv6zZMTptNmDxPfUP8s=;
	b=caMPKKE1tK2xHKKWLKijQcsBXIMxeJr1P37Ohqmd3PLwSUEBNviD4s6F1qIW6ixy
	dXnGhmL4G2m0i27RVg3+nHz4x4f1HdvUhFYBpcD85f68C+brpRJXZ2l1vEtP90sbp/g
	ax8qWERm6043LkUfzGerJbvmODYake/3ZemG9QhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180defa7be2-ab9acf09-f4f3-4d74-9e67-a473ea7e39b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 33c8aa791574a3cd75bdcc8e3527801616580aeb168c996a514703de52650e0d
Date: Fri, 20 May 2022 00:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653008399
