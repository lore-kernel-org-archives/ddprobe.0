Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301AC33D7
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 14:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652450999;
	h=To:Subject:From:Message-Id:Date;
	bh=11ZMmgyQdGDq1Cfe82SvinPvPqPFB0Bg+phTe/IKzgU=;
	b=MUOGxNP6C+FCGBRxNDGbghbcNR1kTOgIPoHNt0fktUFFnCi3xuDCrHTnVRI72tAz
	8K2cziwsmCz/eiwiODgoDg2pYhsX1Mz+Sf9ZbuagdREhquL3BGP3OzVeDse0qdJMhc1
	3e/ZBbEtN/JuFsQRnJsZ4Q7M9g+9RbCJldp7DjbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652450999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=11ZMmgyQdGDq1Cfe82SvinPvPqPFB0Bg+phTe/IKzgU=;
	b=NDvDjN0lvwabd0Xd6b89ywgwjngaRDdG17v9b8ljEAjlQX2KpsM5GKc4Bl0awDs/
	4fIDmoQi7vtzzgOWtW5Q7u8PwsyzwY1uOAH7jMFJ/y6RW1arjobg6426iiWLZ23WXKk
	BuFzt/yFl68mpWdrC7mF1G/Nob4+QSyJEOfF9Fx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bdc13c0d-5e88b5a3-ff37-4e8f-a315-d2135459d732-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 932d4f124f8743a01173496aa80be0050c5897c6813cf64be8d248abb502c015
Date: Fri, 13 May 2022 14:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652450999
