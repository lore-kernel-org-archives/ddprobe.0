Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F248833F6
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 23:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651621498;
	h=To:Subject:From:Message-Id:Date;
	bh=DxUMxfKD1hoJmwbQgYJuriV1v3VSPW9e2YM0JCrCNpo=;
	b=RV7ccsQQJkqjES/DRdKcQLDmv47NXSsC5v+tXCfjQ5GPDP3Y8x5pegMJkT02aEKG
	PrnDh/5O4aZv/0Dsx0w+lNuOqc9EmORs3vnDVJ+t/UxINYVhHiV8uMdDOKOiUNvW1CI
	Sr9eozgHDguBW6T/vUfnF78T3PLG2WQjndosYcMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651621498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DxUMxfKD1hoJmwbQgYJuriV1v3VSPW9e2YM0JCrCNpo=;
	b=JZCdlmhnelKotP4K1CyGczhbu3PqIuC5a2V19qkPJQKQGfFDgA/k6Ti0JKB0JONl
	1n+sNbu48+vNEhaEYTYQ+EAGRcsEDUhHadDNuAGeoEBwL2z/RbtO4cIK8n8r4jeiWyk
	BkjjCVuFnpJicitbXXxBIDa8Lsro1RPlgA/hE5u8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808c500d9f-06016883-ea52-48cc-baa9-4990c7d2c192-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c935df1b21f174c833169e35ea6b9ddaf7ca131ac1f566f2dfd0782526f17687
Date: Tue, 3 May 2022 23:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651621498
