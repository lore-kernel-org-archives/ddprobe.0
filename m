Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643897A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 03:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647316284;
	h=To:Subject:From:Message-Id:Date;
	bh=tGxJTFQYc/gJ2IYWu2CPOrlBtF2nDK+Cr76OG+Mzs84=;
	b=cM6X4+aqH1R0dBnAJWFXmDqe5/K3JNkYXLuVPmtKK6UBX/ubz6U1P32pSSWsOln3
	y32S/DtpjiLLgFiMuflw6Eh8vavsoaZl07V18NoeGR/mz9hSqNZYAhzv3hw/35Dxq9b
	2LnjfuG7QlehZVSoT4NVTUpne5ppRWkVgHkU6fuo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647316284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tGxJTFQYc/gJ2IYWu2CPOrlBtF2nDK+Cr76OG+Mzs84=;
	b=Aze7VkLST7FSXETS66oJFMabxg44cVG8MX7DW3zOuRu1lH6m1UWdl7RiOb8VYSa2
	/XWr6F7wSSM9DttV8dyDoA1cGJng1Kb3cLoB8wPormUfLLmloqVW6yMV5Wh0H/5FtL8
	yGyXT8kDaWbzVsfSEb4+83Pl3mzfkFA72bItIs4s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8bb3b51b-9ead90a6-fe20-4897-89c9-8cd79b3a34d4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 726ecc5bdc033baf83d21ade599a3976d832a060e0e47349399e5386506eefee
Date: Tue, 15 Mar 2022 03:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647316284
