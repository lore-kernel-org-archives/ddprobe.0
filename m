Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D253A18D
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647651385;
	h=To:Subject:From:Message-Id:Date;
	bh=12y+2Ztly72yYH7N52ccd1RpSPyfxMakwJQ/LUusarQ=;
	b=gVuEHz/QXVvgJ1XQOwoES2z7vEE2rRp3GcR7RiQ95rgqWgM69uxubvsl/Qu8apc7
	jeTc8kd6/EW+KGiSF90YsLuJMJ459iFeG+zE7WhtkZu9CNDVvbx2wGm2DWnd0pXkzeQ
	qi7fTODtlQSVXdZMKZw+O/Zs4ZodzoUe0S4jKC/4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647651385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=12y+2Ztly72yYH7N52ccd1RpSPyfxMakwJQ/LUusarQ=;
	b=Z8p/Deyz9vIWbxbtVBTgCgXeTB48m4gSGC1PIx3kYKVBvqNYGeWqrFmtpHvQY7PV
	XvNnvahvUPG9YKVB3N3fwtOq9DHZotnTZ2tHOPoEyAG3IRJGT989aArbCI+HANV6pMS
	htE7m4dYviyDTD69pcbk9TlzzEvmitsHklo4uOpk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9facedd7-f04af470-aa23-4a47-919e-d82b492599de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 543bb3dfba2615ebe434ed640568702c1deec46d6c87c142e1005e0b2eacc5eb
Date: Sat, 19 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647651384
