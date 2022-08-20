Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EF917C2
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660957852;
	h=To:Subject:From:Message-Id:Date;
	bh=Uu9XNkXtPUSLcJuflVKnwaJq/eEk+t2qvSrIkT8lcYk=;
	b=fIYBiPOP4JRzPe+2wpqkfyaEhh0KixhQyuqLXqEGWrAozsDg+yDftjS3Nm4IdxDK
	T8Vlw/h/Gp9Jl2TOAbJPvbc5rkT3pD/mvxXQgt26uu5Qr1Nq/uiSPcCSOWj/kVPsvYt
	AaLIOBc6FOF6+tYrMkLxGvxnMdPePY/TSnz+DZ9k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660957852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uu9XNkXtPUSLcJuflVKnwaJq/eEk+t2qvSrIkT8lcYk=;
	b=BTOZqgbpg0uYsm3UcpuUzxhFTsnC5ydtRoJgAZgin2m5zvKMZ4hcJI66lOzThdf9
	KW2QVdzK1YNDms1QiIZ04lFvKBweMg8E17XNeNwloz8xXD7USrGg2PXjXXOWRYjPFLx
	CouF3FpwdKgFaJdMAAGp7sg0OCC3t9z+oSKGJTm0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b8cd836c-2e51fa7c-bb70-4830-a71b-6dd399da22b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a498f2ca4035713059950a140e59bcadce51f7d2d98a11427ad1f7f0556bfc7a
Date: Sat, 20 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660957852
