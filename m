Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2642574
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 21:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647033085;
	h=To:Subject:From:Message-Id:Date;
	bh=rRxLEiNZh3P/wcj2/apUXxeAwNr3SIwF+lsRY623nGY=;
	b=KiandCH27EIgBXjAkEbQQvbE7lE5qZrEAw9wrIrDAyLOz6EcA+4k7SQX+75dUlcQ
	oHqrtA0DqrbH2huuuIgtVnWOLMjoVcKWGnBAiej5hf9fSlJGmeQzeYdH0zDHjdCQVhE
	Kh5SbMTPdELvrfOhaRcmaFqHFaTTBG/r5xtOuimc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647033085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rRxLEiNZh3P/wcj2/apUXxeAwNr3SIwF+lsRY623nGY=;
	b=P37DxhxzD0tjski3a2gfsSs3FhL8sViQJzbj5LoFzrmgMQyF9Hwq1vQO4eIXno82
	urKKoHm2siz7yJ0OTtbKDbSDv8y9Hwkk81eYgODqMTJBDbJqLmP3Op78Qr9R+Yk0Rwe
	Lgy95pDpn1y5FxOCXSiwuCdxdWfZQKXgizUSOC5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7ad26b97-dd0a68ca-1366-4bc5-9a87-741fb408fce8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fcdccdcabcf766d691515f1b7e24e21350841e26b8fec7b7df1c6a0d0c671b51
Date: Fri, 11 Mar 2022 21:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647033084
