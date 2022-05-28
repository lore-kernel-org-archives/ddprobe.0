Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3341E7B
	for <ddprobe@lists.linux.dev>; Sat, 28 May 2022 17:45:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653759899;
	h=To:Subject:From:Message-Id:Date;
	bh=uUN7tvufBzKXxprcvljIEoFxWDwa6gDoLKWpYM2Zgqk=;
	b=IAaotXUttM/gCdaBtxH3flKKg1DzqcqktB93ETGOSPgGj4nd0S6gMoKmY9CK9reg
	eYlhlwTIMfafsziaBWy7yE+7zNM7ypsw6JZCpQCfvw9F/EmmoaFCF6S5Gq/1w69fAgj
	giUJWnhKN3EH7iFjUV/VznmfEDwCO3F1GaKMj35U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653759899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUN7tvufBzKXxprcvljIEoFxWDwa6gDoLKWpYM2Zgqk=;
	b=FPFC1zNTZnIqlb2/wfidouK7ugf8Yj/GELGbcFXLP1YACTSN+NH3rXbmlJTRJywR
	Ze5t8fWU6e/42n0JAyrxTIPHEA1aPIxkS1viFcAEySIrGayVCl+j7jywCjsL+LhYU5G
	V/6zZhd/1fuvqr6Nyu5bkMzcHjw/OIcRvzSLNxg4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101810bc5770c-8e8e032e-4727-41b0-a865-8a76d633d9a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9ab29f632069b46897f00de4fce568d45a7b0c11855415f92e77391fe8f3081b
Date: Sat, 28 May 2022 17:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.28-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653759899
