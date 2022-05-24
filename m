Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26DC12C9D
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 20:45:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653425159;
	h=To:Subject:From:Message-Id:Date;
	bh=18pDR7yhzyj3LlN9K6NKr2P9v5bmdDziSmV/1C77rjE=;
	b=HGcxGIAqer1Vb3dGl19isA82aLXSoE94JHNCPFevml8W4jl4TvfZNPf5psGTzpXt
	vMmePUzhsL6HWtqUc4gHPDWz8zkL0nOXLxKZ6uL0VGwLeuH0G0hg/FKpHkYjod8g+5T
	LEXV0NQt5T+n7oOdMmWTgTQOP52GiR63W1eq5LTE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653425159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=18pDR7yhzyj3LlN9K6NKr2P9v5bmdDziSmV/1C77rjE=;
	b=DYG1Sjmz157rWlXnxfoMQr7sQbrUwmlj6L0ycuu/+v/UuC+t/fPNoKqSFP/GnCPh
	0AIK9/1jeoSvzdSeotfZqKEdLxKs1isa3ik66aJkx0Vu1AKAP7cNl/EmpC/Y/PuoJ9E
	rXsODWwHUhf87wx3qgXoY6UskBtu/rHj7hcN5+Ec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7d1bc66-2e5e8e5e-5caf-43bb-a96b-18806bab0707-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd9ba7403c2f00bdaa7fbd2ba6a5f8628795075b64275473c8351f95ba35e07d
Date: Tue, 24 May 2022 20:45:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653425159
