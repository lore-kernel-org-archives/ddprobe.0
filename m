Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8040648C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 18:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646848884;
	h=To:Subject:From:Message-Id:Date;
	bh=gEsr/8F3Uf8ms0VNJ5GrxRCDSk3l022xEL6XwAFah24=;
	b=Zy/Suc6b5q+aHKagS8ahhUkd/NL4I7QLbHEBCGgiTe6OSFZW55ek4w2/rRBjfVq6
	qgHljrYoR4Uyltb1UTwMn3kvs4QegrbIoZVP2me4wPsGEM/EPg50ysrdP/zybx1swr+
	uMKYF01PW4IbCfeYsNzGfvFcvZ20kjbxtz3yoxSk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646848884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gEsr/8F3Uf8ms0VNJ5GrxRCDSk3l022xEL6XwAFah24=;
	b=h61wOVr5rbIuxH/IxAvZ1rzcor6rrkp4AdA1l92A2tYONOBCvmQJAG0RQ+KWlCQ0
	kidEjV75oE9xCXkvGv0j3FnoM+Kap4ybB2AooXlcrIa4giXA4XJz1d0ZpRGxgxNYECY
	vBkrk7KLa6ZsvG1n10P1/c2oSqjTgkP9ffoNH/Sw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6fd7c012-8adb9b43-3906-4ad8-98c9-2d832e1e64f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 623d61a47e07f4d34f965b044c867cb60d7424aa74a4161708c44bba71f77479
Date: Wed, 9 Mar 2022 18:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646848884
