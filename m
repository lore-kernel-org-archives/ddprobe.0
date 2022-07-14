Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6D4A38
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 15:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657813012;
	h=To:Subject:From:Message-Id:Date;
	bh=34PEbGXdvjbpSN7NL/NyD6KyOJU7/pRqjI/048USFCQ=;
	b=ObfvTCcMO5WxYuJz59+IGnH6H9OewWdVGbWAMTsUgnrgYYO1rsdwZE3zB/XDeB8t
	fD7REC50yNuD71q4GDcJeOL+iC6VnZGKVmNlFmZRdAEsZRtmUXO/yffPsq8CggbW2PK
	zx5hU+psd330O0cZloFigFNggqiQE6p2aVQ0Sero=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657813012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=34PEbGXdvjbpSN7NL/NyD6KyOJU7/pRqjI/048USFCQ=;
	b=Gcq33ZopIl0A0x5kv/lxGVXC5shR6s6rvG7QM+B4P/3u39gyEcYnlukpVG8uccv4
	cTRKYEymrEVKy6q59M2a0teUdDxEBPmQpb12cAsV4pHBLnlxDiMSF067wSU/Rv10cY4
	S7be26Ll1SCHZy9THCASN3LmxhTVdyxeLz2/eM+g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd5b0f71-c0e8705c-9646-4a4c-b358-d35b02c46a5f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eafacb9bfc4f34cfeb1ccd090328f04739216ea5466af9c80ad7f41b3537e3d6
Date: Thu, 14 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657813012
