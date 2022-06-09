Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462F47A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 06:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654755299;
	h=To:Subject:From:Message-Id:Date;
	bh=wAGaEu2AQJBI/OhwmhLO7nBqFuUnVDzNwmtwxAfEy1I=;
	b=bkVCe3man2alwD4456wu11gyS80rJbYR7MDjnwY5UOJHOG8D7XWrYivOvXAe+hrd
	hgZbrCWXNtNvJvfBXbUcx8noW31qWvHr04P7FADN+hRcKmRW2OcpSuV44llj9nrbV7L
	sc7BLFbEGVKhBgGYp2g8Tlz+Ukc39BiPt4YuPGaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654755299;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wAGaEu2AQJBI/OhwmhLO7nBqFuUnVDzNwmtwxAfEy1I=;
	b=ZG8MPG6PlilDxX8HeP+EIJTlu3OxFqpvwXsrIEp9DIPHiNPy6QketuB36HCSyfPz
	mucS+zIfuE1bzhsqBOcVYmtRIPSnkSpo0MiR6Da+ceWqeQ+wYd1k0kJ/qG6YQPzdeDo
	4ksoHyLtNk7ZS9+jprh0ys/1wkhiIhloOX8NJhxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181471a0fd4-9a1d1d6b-f0ad-4c7c-90a1-528704daa4e1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 12880b567790fe6ece8180a9ababe933e4bf7e17db9c0e510d01ee501d1bf1d2
Date: Thu, 9 Jun 2022 06:14:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654755299
