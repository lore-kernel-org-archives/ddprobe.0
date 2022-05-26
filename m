Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B82EA9
	for <ddprobe@lists.linux.dev>; Thu, 26 May 2022 00:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653524579;
	h=To:Subject:From:Message-Id:Date;
	bh=t/T14+1YBpV9oZjoJnpWwFLdB8JtLGwVqb5d7z2HrXw=;
	b=LLdgvWZUarkIAMuGOSaUnobBmZhCcZe7+dGE3fmWxihFTB5nPGo8alXkUpQMNPQx
	xMH4/jPSeaLwBeGWys5L2XywDIOGcUc1LoHuFGpxnv63vDCztNoKlj+w2a1YPKhq/Fq
	+S9Ex+/EyIP3ek+vSyvfXhutRghJ3lHH+jfewS7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653524579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=t/T14+1YBpV9oZjoJnpWwFLdB8JtLGwVqb5d7z2HrXw=;
	b=S95aq1GKcMmK+Eoz+TwX9dHfn6U3rdXatgTe/nr4VLoKm2IE0phn5gej5azhIZL/
	ZG2YURjYCvgRUZGsuswWIolxJF5DQz4pCTp96DhX7eWvuF3VEW2y68V+2J6t9HwH2Lj
	fDC7KsCJMVMvVjGEjVajoXFuucGHIvvEdw2N1ySE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fdbec3d5-ca2b379e-34d4-4ae7-9009-c7a60532818c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8bc4393b6cc993bfeb8f9b1d766b69ef2be97237aeb73e765d9ab315bff872f2
Date: Thu, 26 May 2022 00:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653524579
