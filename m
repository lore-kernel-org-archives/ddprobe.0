Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0003E368
	for <ddprobe@lists.linux.dev>; Fri,  8 Apr 2022 02:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649383978;
	h=To:Subject:From:Message-Id:Date;
	bh=q2NihnbjKfQslNEYlD8Ea8vp+ETaktB6cV3QZtDLmHI=;
	b=dmgUFCNd49adLoLDwmEyHAAeHhMgslANYaGaxAf8Gwo9TT7g3Q1zD1mD32FXLUjM
	kJkcQAlAIqSlK+5nQ3kqPk0M9ppkUPK/a5tkhUtPMjyiT3CvhJg46Y7uDGK+evIPAvm
	1fSAfKqTtkWcz9ZtzrTL2l9pC+O6Shhwv0tb5FcA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649383978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2NihnbjKfQslNEYlD8Ea8vp+ETaktB6cV3QZtDLmHI=;
	b=NZQ/BrF/t5bOs7rbgiB8GUSrOB73GUTj6tFro6hwGOB508NSqoPreo1hNRazGGqz
	R2lPHJw0H4iS14Ncr1a9p3KOrWUpDmtMu5EUaSCZVVKAnuPxcSEPqagcMyI1er8cnAn
	cBEojlZQ2IdxLvbpa3swU9fxNc/tqza4Vqb6534Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018006f23523-03980c40-e661-4b02-9f33-8717adccd263-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d50e0f3636caa71262616bc90d2bfbd21e0e61f20a91c04884259a31df85c6f
Date: Fri, 8 Apr 2022 02:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649383978
