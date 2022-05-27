Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 124387F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 16:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653670379;
	h=To:Subject:From:Message-Id:Date;
	bh=yW/pZUfQJujB7HAeDUV01oTez/HgACkLYGopg0B9Cv0=;
	b=ZQCZ0eZCugu+vnneC2Z2+90LjKNu7psGdfiVSfOsbIXFvGLTdnKgDtez1n/z3lWg
	+w5WQ6Q2fT3mt15LaEX/IlzvA/tJ9kWgA74hLpGvFiKSTOdJ9cHzFK4f4Mqhux/JQrr
	m5W81bibH5cMUpzbJDFaCB2x1L9AE+hwT4m/9Tsg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653670379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yW/pZUfQJujB7HAeDUV01oTez/HgACkLYGopg0B9Cv0=;
	b=RsIebRF49KXSN7ZtLgnW3lA2B/tO93bhPk8f8emRWu2YzhflGtp70rLz1SmaYdVh
	q35y0czP9E3UwyIa2wXuDZZFRdLHwNTOKisXm2MTTNZ+1I+01d9vXzO2Ll/CfRPNeDZ
	0jz/JuzEakKy6ZFCVxgBNxzUqAGB6vVS422szc+Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181066f7f86-e6379749-d22a-47e1-b996-4f3fd6bac3a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9cfeeb6d411afb6e37056be82571692a1ec6ad8433986f95fed49d1457c505
Date: Fri, 27 May 2022 16:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653670379
