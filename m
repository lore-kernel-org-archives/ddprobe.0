Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E2AE10EB
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 03:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651203658;
	h=To:Subject:From:Message-Id:Date;
	bh=XMl4vY7Q+XmY2MsotJTjhdDcLAJviKIOyqraonTfd+o=;
	b=STsLkh4xI42zNvDkJor6UytT6PQQ1tMdQpJzVkr2ie/hhw5n1VezXvf3FPLWEACo
	2nsEi1BLFxy2bfnzy2a5zjm5n95Iw4sfIeleeaCB3wTfpApgBaLADtrEiEQLIw+diZ1
	fFVg6SHIIjeMftPJvZ5tNsKZHNZuyKO2HV7s84vs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651203658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XMl4vY7Q+XmY2MsotJTjhdDcLAJviKIOyqraonTfd+o=;
	b=XGaLea0KawBwg/nPrUPl1AP3L1NagRdwPV9SjMJQoI5oAzlv1jfy6C/U43sVePep
	esG2b6xAxD1PtIJirxcx5BvLC+INsgW3P5czEd8QArDhOIXthcU1V+fjPgTmK9HbYq4
	bhezSaPbRte33+ClV5LPtEitm9o6zR5jy4OlMzVY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807368520c-66c7b1ec-dd00-4479-9551-f92fc824a218-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0901adc8165519c9014b1cb888028857057fe992fdfed1f0385df0c1237a78af
Date: Fri, 29 Apr 2022 03:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651203658
