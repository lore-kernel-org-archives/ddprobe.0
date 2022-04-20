Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C6B610F0
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 07:36:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650440218;
	h=To:Subject:From:Message-Id:Date;
	bh=ffa7TPVAAfsjazVfCpifISQp2nzM6GZigTYiknlcxRk=;
	b=Y8SmBUHqxnn4xxf1mxH6SMxsmcalPqfSfvxgZMbo/Ins+DLWdY9j/FE+DKYW7TpJ
	VAOXIR+VuK7HaatUtxquUGUWs+3FDhyUGf1hEKYmhFID2WuVM8xGEL6TxwhVy6SQNHG
	PITEGnQelh1SaqjaW2mK7Ff8mvd6+ruf3l5pk02o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650440218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ffa7TPVAAfsjazVfCpifISQp2nzM6GZigTYiknlcxRk=;
	b=XkxDmZ0/6Of53VxDnfzW0kyEyBgbgWp63QnOtWD4J1KD+4v+JfnHN5v91uCCgLr3
	Jm5S3HVhMc69Z6UjvHfSjS4xYRV98rvs5ke6wtWZ3NkL3RY3gJ62pxWDNrPNliAhdu8
	xvXmA72BeGP2DS8BCOnybT3N2ukFXgrj1LvBBbMA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018045e726a2-442af96b-82f7-40b8-9c38-ce0674a7e039-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f0bd5504cb9da1fe6591799e0a26a6a26732487f558aef7dd493c6fd2748e566
Date: Wed, 20 Apr 2022 07:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650440218
