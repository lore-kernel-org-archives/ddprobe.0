Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7735728EE
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 15:23:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652973779;
	h=To:Subject:From:Message-Id:Date;
	bh=RCoyDwpWucOGJ6qFfNE7MlYhkH7Q2MmI160a4ZgxRCI=;
	b=iA9oOTxbDIZogOTLKvI9SsuEGhHrXAnnTBmIXomFUXefGLM7igZaX70iT9fU7Q4E
	wmnG3k5UGjLQQ65tsy1gAU6r6ZuYxlpXa9wnNn9oF+QKYo1fQNij7vDdCMiTjdepcNS
	63FNC2n8r2l/8km2YDZ1Ywf2zBVSIRgKhTb2vf4w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652973779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RCoyDwpWucOGJ6qFfNE7MlYhkH7Q2MmI160a4ZgxRCI=;
	b=Ud3m7bnFj0CH/eomnlTCud1Aii0n46AjPTPwackJ9doL5BRvmESDKxyKW1Nhu78t
	VE0UXjsGJcLy3N5XA4otiZ6jKN95lSlg2vqfxnwCh0qyq7f123mZqBESwL11jHQCkZm
	a4ShS0e350l+63n9Tt5wtHFBiyrao577G7ukE5sw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dcea391a-9412d27d-331a-442c-b33e-f4aeb3a3c356-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d1c3924e10606f00d5df591be781d7f8ca626d39da8be0a0a1ed8d4677f6a34b
Date: Thu, 19 May 2022 15:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652973779
