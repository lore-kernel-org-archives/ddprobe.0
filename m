Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319E97C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659868852;
	h=To:Subject:From:Message-Id:Date;
	bh=d4tMLn/WIhBwVpur621smp6yhrIya3JYoWDTB6VltIE=;
	b=FNEBs8H3Awtt0xDlXuLK3NE4R7AroqlQIN64iatY7pPAluJBysoadXyAYlN2nwVL
	tz52dhiX9biUzxNAgOfhwU9Ls1J5Tu827+lcWXBRZG6Gf3bWTDQZRdqXcMkjuLKgzcB
	qcs0ZeW78en7Y2MRCLBknGNo7P073l/UZ5+oHEDk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659868852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=d4tMLn/WIhBwVpur621smp6yhrIya3JYoWDTB6VltIE=;
	b=BIu7g7wuLu67oeRRiJa/+rc3pImisegROKvO3F+/HDcWQHGQrVmrox/QyfldEtet
	r7peyn+wpITL1uJMyUEJA3hsrLev4B1Ulh1zHvgeJCASPhlbtmL5Ml2TxSUd8AhzMeJ
	bEBIK5toDPmgV0hXcMjclmPNQndq2/1XMZ3ZoHTI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018277e4b12c-a533562d-6952-4410-85a3-e7ee8f98f07f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bf66236977de68527285858d989158bcdb184f4800f50432ac10455750d0218d
Date: Sun, 7 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659868852
