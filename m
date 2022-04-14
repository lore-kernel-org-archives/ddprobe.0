Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E76E73225
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 21:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649971978;
	h=To:Subject:From:Message-Id:Date;
	bh=/gO2Iw5E+kY/JyhRMrgBgTfpHPXxgtNRMqJ22GXRPgc=;
	b=MW8ZSKdUt8Iy0ZtC8TkJbL6UyZG2l+Ln/g09NBRDi4VQRkbuJkSFIHRaXbI3fb0x
	pnhhDXm7kHB4487We21hgKwox0/2JvMizOVW/LXd7TKIAZI9nVgvS/2mR8nNuuO6ARn
	GyvO0DupOLnH7ikpENk5KMOu06FY4friSTpLJBvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649971978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/gO2Iw5E+kY/JyhRMrgBgTfpHPXxgtNRMqJ22GXRPgc=;
	b=kFU7Dip9EgIushffjhN5P+IHPD3VvBBiRWwDQFVhKIsdjSujU/Hl+lfUcrq18Iqy
	fqy1hgLGt0BDW8S6ViLQVHNwOWDaVifkf0i5PJ/A0q6yqfuP90MtseqwZtKrwX1/HPF
	hThjSTauZYu/+iJo3lpSay3deGx4G54srBHQ1HMk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018029fe604b-08d4fbd4-b0bc-490c-a4e6-fc78a237c37a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3516b02138e342a9a8e33bc2801065e7c58d270cb2455a9f05598470e7112f4b
Date: Thu, 14 Apr 2022 21:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649971978
