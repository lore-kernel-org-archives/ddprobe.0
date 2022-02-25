Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57EA323A1
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645795584;
	h=To:Subject:From:Message-Id:Date;
	bh=3JzCcLcZrSUnVJC+l4d/Hi9i5ImP2jYNGw33rz9BR9s=;
	b=OYPOgwIcpKNjcibcAEMqQWfc+7ghcTQZy5uuZcKq3SKgK1jaFW0cfxlI3ux4OibO
	zDTGRmA+/JBiWkrvKz/2O0VQaCEUS1QCpRL5+oJnDQ+6rrLIWd/Gav16KL2CnsGIce3
	yg3zsE7S/E2QkAGm+qkj34rWyeiBPA3SHnz0Gn+A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645795584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3JzCcLcZrSUnVJC+l4d/Hi9i5ImP2jYNGw33rz9BR9s=;
	b=Gz2iv07+UnpGvUiUTliwdv7wMplCfBlRNUreH6umYeZUL9FCLZz5M/tbJX3OQmB2
	J8EFVtH6ApE/Xz/rsQ64S/Z3aACIpA43Gx0PDCnF4c0kr85T0j7xT8AphrwDef+/8JQ
	eyTMr3Tjq1hKnRTDdauWQVql7tQ+QuVIdCmDGdZ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f310fab30-f7fb281d-a5ee-4de0-9f22-01225654c93e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08536c5cc84fd7476a532aab5e68e8e3e7edc6ca00df009ab5bae1f3a5fe7305
Date: Fri, 25 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645795584
