Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8D3136A
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 19:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651174618;
	h=To:Subject:From:Message-Id:Date;
	bh=SJCE9pXUaoX80BrDvXnutPPFPnDIw4ltjOKQIKh6f0s=;
	b=dp7iSgrTuWDP9x2Otcrs5OPIYMTfVG03Hb0/fmMcyMNiaGT1t9gEZhrhgzkoYMD4
	O36+LC6TLOwX0o/tiy7OpMPU36dmR5fxNkMoQls10Jn2fvsSWdJWri/8NPhc2w/C7sI
	WqSwWXc5GHckpWhZtPkCnYDyl25LAK98u1JkhW0o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651174618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJCE9pXUaoX80BrDvXnutPPFPnDIw4ltjOKQIKh6f0s=;
	b=Zdbc7JLh7ck4I80aLHkO+5CeZTiGjBBFVqfMV4ziDZVZk5hAMDgaKudI/rZy6GDx
	2UbIzFY1iH+i3c+c/i4gC7OxTqQe3alhIA5Cb0m30gxmxhtRQ0PivWpaySg1dWgL5Fm
	81yXkt91hQ7zuU1gUvI6+CIf+lns9OP9GRS0WkNQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018071ad34b4-8c5616fe-07fb-4e2f-a457-02b94564a7d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7cc21a3c6459b174afa4fb8c78b0fff028995218d9e739843a462302edf4664f
Date: Thu, 28 Apr 2022 19:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651174618
