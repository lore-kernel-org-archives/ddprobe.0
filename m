Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C0C97A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 13:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653052499;
	h=To:Subject:From:Message-Id:Date;
	bh=UvSi7HABG1Yv9Wt7anezvByTPtZGCQGbYXsHTSNY3tA=;
	b=IIewQs14in2MlJ/rjXi52nBjEzAsjsKX94IEBdUQbj697phw/Ohd30pvSCtj3G7R
	dg8FhrQd5XoGSjpBnctXfAAm0kAx9UToQJSQixpAzcDj/SDbecr27x3lZ0BMiR7P7bM
	ewAlepT9TsESh3klQZh+jDepxWnzmakb9ZBXQU+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653052499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UvSi7HABG1Yv9Wt7anezvByTPtZGCQGbYXsHTSNY3tA=;
	b=fP8qPKd4H8RKd4RPYVJRSLzd7LMU3KN2gpiP5Eqq59a8BEb3+rTdTUA71YO3a9pS
	VTWh95+O3UQdW2EP9SVCdCWUziVxlM8bYHSQ31+ONDMI8sWoCYmgSRJEKm2jALD/2wu
	uM/2Kv0rnqCI0swcbSpsqLXw8av/u6gQCq2Z1az4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e19b6530-0a8cfd3a-eab2-4d48-bb8a-3b807266061c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63add2185a99b8d43af06431f2f496c470be1ce3d4a22eae2707378dae4591d4
Date: Fri, 20 May 2022 13:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653052499
