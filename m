Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A2A600C
	for <ddprobe@lists.linux.dev>; Tue,  5 Jul 2022 18:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657045612;
	h=To:Subject:From:Message-Id:Date;
	bh=ctEpXcJ67upBUn+y0oFpGttoi7zQhqKN+axAQbBhZt4=;
	b=KW6NfLJhJPMNx9WEFFzrivH97kpi0hJamMPNMD8yd/pKDTGFS8nUKR0p9AyVFrH5
	ZKBtucuRPZYD3KRQ0ksFuZ4lYMzprjpHywbIXSGVGGg149KLCDlgQc+ljL6EWKmXYyo
	FL+ScYAi6hHCG8+f29ZVbW9VDc1pZ/O9y1C5GQBg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657045612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ctEpXcJ67upBUn+y0oFpGttoi7zQhqKN+axAQbBhZt4=;
	b=U/nlLnqTXi2jkQLtaSKbZ1lXFvs1kdWAfJSREv2t8wfFbSf2s7cwsYGhFIlxRTfc
	JoxN28NDHOMeQNrVPazCSLH87hpPy44jsXzdxa+eWd5CGv3klLXRaNxcmX5JFOyAMLr
	L3Woy8DRf7pKwHL3yrbi27Hu2WTIjpzL/CKxjoGc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181cf9d7714-aa6877d2-4387-44a4-85ad-53463d19196e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f2c424b0bab8cadd59ec2e8f2ee5949faa6d6167605a5d248f9d7f44814e015
Date: Tue, 5 Jul 2022 18:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.05-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657045612
