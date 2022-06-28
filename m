Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE02368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 04:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656389812;
	h=To:Subject:From:Message-Id:Date;
	bh=uPmH+fvJVJRQK/eggoQQzcPXE1JZKxBKjHN/+ukAH2k=;
	b=lghUWb61/sWhudC+tUu+o38CRlH7k9LFM8wafr/axsV+PtLT54jJeAvrLivEYt6W
	fLzUG3hWM3TxnlKh+aByjavG2Uvk9yAqMAGzdqNydd3tjKfB9E+iUykYqXQQlw1llX0
	TMKSm/AuvTPGp4nh0uz/hv9Acj9eqD1NeFdw+Bh8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656389812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uPmH+fvJVJRQK/eggoQQzcPXE1JZKxBKjHN/+ukAH2k=;
	b=ZLtNBraXC0TMW5SyDpOHNnnk7xGsDRRFZ+3sWSaMo7mzUZzDEA5z5HCob3N5C2Q1
	Wuqepyhl2gj7wzTmUWA5GsT65Ka9rSm2swZL0ptilrXrtHtdc3X2Qe22lQlccDTa/YF
	k5VGopbvSx8vf+Npn1YTc9Himd+XK3eMxCQMG6kI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a886c03c-ce4aec5c-fb89-4aa8-9f4a-5f454368715e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e9a28903f106a50faf5f0ac576b3bae7f8165fc1e556964c28f9adf1ab0ba7a
Date: Tue, 28 Jun 2022 04:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656389812
