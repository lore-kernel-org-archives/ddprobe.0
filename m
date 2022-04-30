Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 237251FD4
	for <ddprobe@lists.linux.dev>; Sat, 30 Apr 2022 19:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651345918;
	h=To:Subject:From:Message-Id:Date;
	bh=KuqeCTgQDJ9ZaSAz712xmnRzvcgKHlaF1WrGD0j8EwY=;
	b=ch+BskM5GTPoTlFkiALimYAt2PZc0XUv1uQH+g09AliG+MpSMQyW0QIJAV1GB4O4
	aZTG9cE1KaRdlZJ6TTyeRG3yY941vq95FF2ohTCB7OxkmR8hTt8NbN8qUG+w7xd9gPM
	ijz/k65qq/ME8+6cazSeJS+chS092G5SzG3wzQTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651345918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KuqeCTgQDJ9ZaSAz712xmnRzvcgKHlaF1WrGD0j8EwY=;
	b=fr9QpMtGPkVHHJ50eUjDwRBM6L64VxUWdXNvbBf779HrGx+47DFHtnWcKGhjImyB
	3BXX1r/1wpVSxkV2LTfZHMIkrRE2+IJn8sfwccgOIm4sb1CloKDPfpZaRh+x47L9Ptf
	TNMj3z3cClGh7bTSAG3sV3YF4k5euCZRDbAfzGgo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807be309a1-1837cb74-4efe-46cb-8024-0212ba79437e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5221530058db4f14d3967af69e41caa7a438f46dd730195839f77d940e13d1df
Date: Sat, 30 Apr 2022 19:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.30-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651345918
