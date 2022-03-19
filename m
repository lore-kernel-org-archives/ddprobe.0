Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C3B20E4
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 05:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647668785;
	h=To:Subject:From:Message-Id:Date;
	bh=mjG1gKSzJkhWfsifyVtPWlKG+xcnbuWk6qFFgRs8t08=;
	b=SvThE/iU4qHbL3rHQ192IkPQdyJtq2Lq0FFf6UR1RUfoMGtzGamllCBNZN2glFS4
	2JhnT6AAF4IF6PU35oR5yJgrtetneqtj+DtPo3OlA5V5KYaJff/EFIa8hTj6FOgsMMX
	rST9+7isYxY5ejak5seK+h8/mMPu8jxS7gaXP55Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647668785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mjG1gKSzJkhWfsifyVtPWlKG+xcnbuWk6qFFgRs8t08=;
	b=Ft1MrHUVVyD1U/a+BkOQrNpG+3PJW8TrvK7wTaQ5YD6rb7yczDBdcVXqFS6HSF4U
	s57422VcgAbW6rsIOlcNFMt5v2XGCUKc1SpT9FtHbpw3GIsWfJHkmVfoSrBmzRbGS5T
	w/4iWpLe3e1z1D3lUoHpiZWFbbBUxjKiMoFg2w7U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa0b66f0c-b8aa21b4-9616-4596-b7b9-1bff6b826b08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9e18b8e3876d3b8f6f1ce29bd6a15e4478ebf1ca27e85bea62e270e6f47d0bd5
Date: Sat, 19 Mar 2022 05:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647668784
