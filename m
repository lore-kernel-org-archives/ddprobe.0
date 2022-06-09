Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C887F7C
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 12:46:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654778760;
	h=To:Subject:From:Message-Id:Date;
	bh=phzU09TabC0YNnpCdR1/mGs3/Lvy1cakcGVuRVwFORw=;
	b=doXSiuHKIQW3BDeVuVF/o1QyEbjqNYYH7VATsv8zm5M3UO4MNh7EsomYMbG3in3a
	ZpwP0/jRj3qOXHTLbuUBYjtty5p2hIrBAgnR10itvqyC+4nWKELybDI+4UpKcrb0N58
	R4A5wUk0zC7nxg2nPZFeWMRee/bBcBoYCVFCrhk8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654778760;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=phzU09TabC0YNnpCdR1/mGs3/Lvy1cakcGVuRVwFORw=;
	b=UXfAUZ6oYoabNZX4SKKeQKelbyKYtJ42p0I5hsAM+N+6R6wXUmNA5p67Fhe4fuXl
	ptDOtCgJYC/DVG5rqQEHQcwVxlzwJRfQryMgIVXhyiVEP6kxXDlAdgm0zXgfwvinGSG
	mbFPUo/Kvbh0lpWXYjfma0/KU0nv0wEn5LlpjF2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018148800858-c5ce969c-932c-450c-a377-2cc912bd3bcb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22762b82ea8db7c9b86da334bd3d883ced10c7ef9e3acb91187fc8a266359270
Date: Thu, 9 Jun 2022 12:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654778759
