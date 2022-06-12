Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1A8361
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 00:24:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654993439;
	h=To:Subject:From:Message-Id:Date;
	bh=nhs1+oc++gkQgoLGD4hQyjLKXheLMDYJJNk91g/rBpo=;
	b=MJdiaJbZwm9H7wB4jG0cENWQFxY5U53iF3KsAQffKZUPLvfqtnsTNBJpgdAcRn48
	jw8F6DPi43MfqBkolcD7y8My+7cd8RBaFFlKiIT/+0qiBdwrruA7E4vD0jIlaxFONwV
	ef1O1YxvvT7lohzPetOytDMyky5atWl7HExMakhw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654993439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nhs1+oc++gkQgoLGD4hQyjLKXheLMDYJJNk91g/rBpo=;
	b=OSbytjBCPEDSYYsdSiuAQW8ru2Hi+PCD0/KodBXQawH2OFMZHPXd8xNGHemsX4C1
	/VB0RYiyHGLbO7Atac/0njDjQP+Q/UcO/wSFaXrP/8HpCjRXRmuKp6H0pGI5eQrZhqC
	bZ7xIn4kE+vBUd8OziAM8ydaMGWDKv3Hgr6s/Lms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181554bca5e-8ac31db3-9cb9-4cae-852e-c0df4de1d401-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d09047fdc25c5fc9aa313d0b160e40816db178fba625f52b52ae9cb7c835df64
Date: Sun, 12 Jun 2022 00:23:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654993439
