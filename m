Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDFF7B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 16:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648829218;
	h=To:Subject:From:Message-Id:Date;
	bh=SWunZwDtaSelgpRT0pHVUNU+6rLhPvtdjOV7Bcg584s=;
	b=aEoDgUalcyY845F2Smm72NoHQUSfnYOd41zW0gi7uxE7x/hUsWhI8ghQAe+W+jud
	k9axXSzHbfud5JF5ZlewNZ6Wdb0Yd2mqNGk0OQn5A7WjRJlSG3HpxQlVCJr1C/YJjrK
	7roYQ0Q2WsyNoJmulvfXsFW2wjH5tlm2mJ1XYpv0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648829218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SWunZwDtaSelgpRT0pHVUNU+6rLhPvtdjOV7Bcg584s=;
	b=a4Mcu0hbUgaKdCFEPRuP3suZVfj0AiJPC4bgvA2Rz+/bE65q3kN0+rdI/5Xqro5i
	nGhXx2y8x685dPnS7djTFlRJn8s66A7ubbDcXengcgJSvvVPZcAvJztIPVfVpLI4LhG
	NXz6ZkJee3E9Lc88fbV6XtxzXm3Qa8SK01tO4GBs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe5e13dce-6dfe3a79-ff0c-4218-8f77-67f78cba5af6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5137c3a8dd9b094a627ceef1d78075a7a6b67ac65919968fa79c69b3ad67382
Date: Fri, 1 Apr 2022 16:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648829218
