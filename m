Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA3246B1
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 09:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653644580;
	h=To:Subject:From:Message-Id:Date;
	bh=Uuhi9AZvYBsPipxdl4XEUlX9CU44DIOxs1jQ0PFJ76E=;
	b=HtLiA5xZ4h4FaovpS33i04/UtQLsIun0gtAOleLFQ9CAsfAS6KU0JqMK8ppWBUlB
	lwBJ4aVVh/fUFAqgJCcrr5BLMM+FRH9uaJ0en3+IZBwbAdYb35ZTe5kfKlHT9p80CLg
	/wefVCCQOC3MWvVhQIB6kQCC3QmXvLIAdqb6fL7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653644580;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uuhi9AZvYBsPipxdl4XEUlX9CU44DIOxs1jQ0PFJ76E=;
	b=AUWRVWIjbMFl65LeQfh1fT3rmi9yzk6M4ijpbt0vpKrNN+iXuqLoighPDmNN5V4i
	3k5bNMGASJAhNk0tuX2Ma/xK8y8PrMAts174DtIbMyhMo26aleF84G0owiOZUliB9Ta
	KeBpxz+B7CQYDiRsMjwTP5cn2y6pkJ1J+ROgxnRs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018104e5d1c8-b0564c19-c425-4eab-bfe2-07ae049a6aa8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d676fa655db9cb4596d695e07b397a2fff45c8795348ddc94d6a6a9fb6f375ec
Date: Fri, 27 May 2022 09:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653644579
