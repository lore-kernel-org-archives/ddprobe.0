Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4AE28E0
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 12:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651496338;
	h=To:Subject:From:Message-Id:Date;
	bh=J5wofaNETP5UvGCoSLCkIfL93FisNyPpRUUyC2KdPWQ=;
	b=N2g95iHqCQtVNhqVWwms9Lc/S3c901ARkekdzuvnXg1S/iY9IFy6/Ph2BvHCEMTu
	0f4LfUy5Qmo4w3CZRKGFtTiLgcYFWRfNuRvqlnjcfwfTT27f4t/TJq4zP9a1rCDM2Zy
	v2UAAoxLVNx8juQiQ7m47GmbqeUQa2xBkNZA6Ltg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651496338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J5wofaNETP5UvGCoSLCkIfL93FisNyPpRUUyC2KdPWQ=;
	b=eFePdKOA0gaY+na7DkGGZCuIwUfDZKznTlFhJBFszGNDVzwexOGZqyWIwue82g4c
	TrWZZ7MU957ohvVZQJBV7l+Plh9IU/IIyremhdHIBEhwf7vIyk/5kP5Msa2JYSqhQvh
	x3fT4/HNx8ZWszIZBai7Qgj6dAwrjKdl7xJFn/7Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084da43bf-85de3fa8-88a1-4b8b-9d47-25c56189c164-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24124453246a7d0275f5a3754948ee9749c14ca59ed235c230b3693c141b0802
Date: Mon, 2 May 2022 12:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651496338
