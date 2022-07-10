Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F5CA52
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657435012;
	h=To:Subject:From:Message-Id:Date;
	bh=6Jqkz386dh9++9Va5W3ZV+9Em+ARih2RQZdd3irKl4Y=;
	b=W9pugrfWNNIWl0HovfsLj9k10pPaJ+scVXCKmgIjjJNQSoPDheKYfoXYgUqmMh0R
	gk87vtATz44zuLnrfw1Gl8pyBgHoaRXHd1IKVHVTx8W9YivM8JhZeD8bPvVgnc1WxvJ
	WRcHFeZQrngd1tYcALw8Reib0LC7lZOmTPuG/Lzg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657435012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6Jqkz386dh9++9Va5W3ZV+9Em+ARih2RQZdd3irKl4Y=;
	b=C1+NbUkxuIyEjMUHo+bd+z1XLV+DABnF5RoBWBxMg9m3zw0BA3vAsYb4W5FPAaCb
	dSiQgwW61/ASOlO4uYFt5p8b3UKj83ezl7NCrfNzdNB8LAV1llsyVjHfYfWwgpAER51
	qcCER0i8TGhQNwf+ujgROH1+chG9/WAXlj8ysGiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e6d33cca-8cfdb071-99a9-4053-8a3c-d453203f98f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09e68a632e2e38e3911731464addc292ab835cfe41f6f8cb271c83cc8b8dd718
Date: Sun, 10 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657435012
