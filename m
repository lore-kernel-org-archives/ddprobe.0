Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E007FF
	for <ddprobe@lists.linux.dev>; Fri,  5 Aug 2022 01:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659662452;
	h=To:Subject:From:Message-Id:Date;
	bh=McCKUktvDsMwfSnjx/v1Gtze/DIUw+AMl8qE78ZfAsc=;
	b=aDuKN04iU9VgSk7qFYAJ0X9IuIeGU2czDMBgYZ1lXIFh+j9/p59wkjXKQ0eL5EFz
	cTtj/6obyai4ISj45/IS82jcg+bLeDZjScyrAf2V90bHF3WKkmDKcxjygdC9z+kBHQg
	+1dkHY4s94j05ShCAvdqQLn5f5et2KS7Je6mDxHQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659662452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=McCKUktvDsMwfSnjx/v1Gtze/DIUw+AMl8qE78ZfAsc=;
	b=Mp54AcAGm7UxI1Tg5MRfhCIjQQ8Ugv2R17SYzau4f2ZCbTrElSCX98IbrdLHwGD2
	aT3QM/nSfBfa0QpfpFidROoggrNIQ+PA6CuOWKL6omV0sAP7k5TdwpB5MfnQUz0IDHS
	LjHKCVeEUFKMyXD85GgBo3KNsbbUSlyP6ovm25HY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826b974774-afb59618-546c-4cd0-9333-91ed28d48a7e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0730b123f0f29379703a286a86d4f15b2a5d4ecb8127df5a8095b81ea7aed03
Date: Fri, 5 Aug 2022 01:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.05-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659662452
