Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E08E53201
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 12:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657024612;
	h=To:Subject:From:Message-Id:Date;
	bh=dLVF7hdCMlKmZk3c96jIx5b736MnN48aEMtsyNMHKjE=;
	b=kg1VAVYmNaPsxUIGLDKyxusi2nJM10AXmDTBA95dUhsl6RTlp9Tm6RBbEg4hRs+e
	1kfBv0gzCN3yiNqZDDBlB615rLArBXU5QAukfe42mrseUvzHK2+CnqgtCfOjzH+T/JV
	0GOvE8nf39B6HC833vZbyg64/CWcBOSzDqCL8WOM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657024612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dLVF7hdCMlKmZk3c96jIx5b736MnN48aEMtsyNMHKjE=;
	b=CPNoK4J5iH5E7pJGlNgADdkftIaAb7hOPVJp7U3QdzwersSVLar7Xnaf96FYy7qu
	PajNV8rhHY04hnMUMtJ+tIWENVOL2KJn4xcdPMuje37se9hLCm7e5nRXl3233H8cAYP
	5yFjy6uFDfyUoH7DKDlIfzrrppr33v4ZR53mTK3A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ce5d0794-ae341a1c-54cc-4338-a7b0-28fa89c1a4a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7983aaf43cdea6e510af2289a8dea0ebb5040dc99def49cf43657f73b2836263
Date: Tue, 5 Jul 2022 12:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657024612
