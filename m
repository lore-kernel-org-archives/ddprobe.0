Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916557E
	for <ddprobe@lists.linux.dev>; Sun,  8 May 2022 19:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652036578;
	h=To:Subject:From:Message-Id:Date;
	bh=SHyknFUBur1GiOEe5wQdQ1+Ene6G5xQHnS0PccYMorc=;
	b=bsWI0BQEqB9Xp/5j+Co9gkQIIf8O5PkkXJDBXTQvGpX74E6szCemWiqcQ65KgOlP
	bMNtra2TP1gvUY+HOrOA+VA05IRROi6wwnfQ5NUdM2/fKAwIoMHrMxSdmOiVwn7a/jE
	8poBFaO5jq/VuCex+7/6/D6Q8QHbdRiWNTlJV/yU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652036578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SHyknFUBur1GiOEe5wQdQ1+Ene6G5xQHnS0PccYMorc=;
	b=jj2MHJ0HbKqSetgoKZfoogVSPFX0Cy29Rn2Q4h5vVe96X2RnS9CHZlDOGPFaGWkV
	p70V1Ub/Hgt8NlpuQP/GGHrcuus11d0OpR9YmtA263hbbKiIwhncdNrbl+PyWRQOcac
	ocGf+Rx2+dCCIjrhDI/5vGSxCcfbmQvy29nIu/mc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a50dabf9-5bac8fa1-9477-4cfe-8e7b-00e1c464b1ab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 68de1c3bfcadcebb7f029c2397accbe3cd7c3340e1a26b20d1ff32829282d127
Date: Sun, 8 May 2022 19:02:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.08-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652036578
