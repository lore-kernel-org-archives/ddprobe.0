Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6ACD57B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 07:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645428684;
	h=To:Subject:From:Message-Id:Date;
	bh=VZP1ruNn2DdCfVr+FwVATLe6U3cgFjrPc5fnNqMLqI8=;
	b=hdmzubqhO5++MVYxfrtwEdJaLLpqFX2s3gMvs0CP1Tvyptn4uu0sluBWZkn2VhRJ
	+icbO4/r1PF9F0IJOKte8Q4q2wzS0i+UUbuR+oY2tgyPOIWEzKA28Nh9btmbdBi7IJK
	eeaeIDutUHCdcizO/9yatOc5S1nkG42ov01jOLF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645428684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VZP1ruNn2DdCfVr+FwVATLe6U3cgFjrPc5fnNqMLqI8=;
	b=haLj9pVWhPIE1fC8lhUzi6j2U5FEgAY2P886up9DGkL1bGqKRDOpKLoEl8S/JUy7
	I7G5lq1qF+T5A8T0AZoifTDOVLRdFDrVVInSecG02UuXxUSM4DKWXdxjRUaO9DEUFa4
	pVPyc0xmMSKqJ+c/IwF8pR/450nH9BmiM58mpHpY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b3137ea-c884346a-26bf-4e51-90cd-e11793855b68-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 359156efe1447a8a4593ca456ab3231c98b915f5016791bee9d1ab8583caebf7
Date: Mon, 21 Feb 2022 07:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645428684
