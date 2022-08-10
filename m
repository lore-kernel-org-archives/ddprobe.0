Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904C317CE
	for <ddprobe@lists.linux.dev>; Wed, 10 Aug 2022 08:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660121452;
	h=To:Subject:From:Message-Id:Date;
	bh=92et8VnJOMNVYis6ReCIeW4Z6nJx/BgDaLqn9MvAvzU=;
	b=eLOUxnginoyRMkYbicQTh7o4j0A4hIa0E0zDa4hTcvMcEuWWJZnA+UkcG1Pm0mdW
	7q7JYkEXpbdN2BT06ohkWeiPZys8AXUTLBftUeX6I1VexRQNdujg1WRjT2i0/HLdESL
	C2swcnOPgAZpQsfk8dhyfUnidkEm1No/+CvKYC9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660121452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=92et8VnJOMNVYis6ReCIeW4Z6nJx/BgDaLqn9MvAvzU=;
	b=hprGP3kReu9zfSzNOqU8HfgoA8bykv2TUKabEecm4owFmP84te65kxkEiHCGDXr0
	FN92lASplit2VKxMKlNIn3nzox+6/khIagelfDMa2PAQPZzXtHQvwB5cwYg2MLXTmeb
	9smVvwHJcne4QUzdAZSgXAuYeRFJfuhwEUNtDdm0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018286f3105f-dfaee9e2-45ce-4236-9d50-27826cceab88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 038e2e663cdcfd154a5e369a1187db57b7fb73299ca86bf59ac83f8a5fb807ff
Date: Wed, 10 Aug 2022 08:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660121452
