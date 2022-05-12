Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FB6C17D2
	for <ddprobe@lists.linux.dev>; Thu, 12 May 2022 05:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652333099;
	h=To:Subject:From:Message-Id:Date;
	bh=n2Gp5eePiyMTc6TSPAEWr/dLb7sejVgYPDF4Gk2BJ/c=;
	b=DaugKxep4L+ndwmH+rWZaPhYrwG01zLHDgvlk+VCtPh+YD51tTAPBcMrrJcX/Mv4
	7QNKD0PALh3EurDTUlMAREEOIJO9WuKfuy3ppepyCYGnlH7MoEKA14Q5sss8Btoot4T
	XoWdgfkf/zZpZ4XTlh4eGYY8SJCWmzQLE8KWC35U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652333099;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=n2Gp5eePiyMTc6TSPAEWr/dLb7sejVgYPDF4Gk2BJ/c=;
	b=WW2uClJHvaXlTNlZUfkYS/tTdCX2Ozu3lf5XFEY9il1/BeiQXZGNsZwZYE6Ot92q
	HqKcBg4eSfcvb2Te720HqBqtHUOVDn6zrMrLTx0XHwxsPwld+sPjnDqxwlqliQ9sZym
	CV85Gxxv7ZgobxM+fUW+Id/Ra3uIELeotgB0+Vcs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b6ba390a-a2349d70-0b76-4c0a-adc5-953799265f8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9fb8673e845a8cc2905e090f2a84860c31d58efa5678b1bb12c922e720612776
Date: Thu, 12 May 2022 05:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652333099
