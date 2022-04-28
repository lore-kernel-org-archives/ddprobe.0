Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47622EDC
	for <ddprobe@lists.linux.dev>; Thu, 28 Apr 2022 13:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651153678;
	h=To:Subject:From:Message-Id:Date;
	bh=CprRim/H7D1REvW0V6VxQ8IewyS5WODdRkz44siLUgU=;
	b=TAy/1+wdlrLSe1kPWOJsWzqxAEV5ACwOpu5v2AWWyIRyanodm+DNXHuiEc3e22eP
	qg6ViN62IgRCz5tiUtb3ggyRLNRm9mj18nLJcWHxhz1UU+eM6E0zoiiPnLitnOYPQ5A
	DxwkbNkkAN39pNMZgyOvdmLklbBInzHcBF0LXHSw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651153678;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CprRim/H7D1REvW0V6VxQ8IewyS5WODdRkz44siLUgU=;
	b=ZVKZ2gA4bGLBrTWRT/RO/6MaP3Ol3FeZbDrAdpWz3DmUk5v2jzd5NVYCSM+mKD0m
	dRraKRs4zXKOBOKWbKoFLMRiFOfbCO1rF40AX0A8sBIJ/q3pNVmgSPqKyvDMBIzgezb
	FImddKTbENJ7RHzG/e3483L0o5feBbvoxIIO7rZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180706dafac-fbc29977-5826-487e-bf7d-1c20fdf45fba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c372ba4cb879a2757910734ca9192766687fe4db00444c1b84bc76444d7b439e
Date: Thu, 28 Apr 2022 13:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651153678
