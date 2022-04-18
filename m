Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5952D627
	for <ddprobe@lists.linux.dev>; Mon, 18 Apr 2022 01:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650246238;
	h=To:Subject:From:Message-Id:Date;
	bh=Ij3IYmK1ttcu7BGs6IfxEygpfKfTT8oTN5uJP4b0zAI=;
	b=iAnpgP/AecU/tRuduxo5pv+pmvPQ43kfA1k2UMopMQU50vrhfwtrFq0++uIGksAH
	hCg+kqzvwkwvbydU4i0TSkAGW72ZMut24soqpLMr/bLfGnHI10T1yELrT17IvTrUOOs
	oxiD0OUpLV4ymM+QmrkC3Y3Sk8eo36hMawibFJV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650246238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ij3IYmK1ttcu7BGs6IfxEygpfKfTT8oTN5uJP4b0zAI=;
	b=ESsikiG1yoxalnlonF55Iurm2FKNSLf38l/VZIXYW73zsuGGKCUrDgv6iTPD3oN9
	Bwa5jkjv5SxJvTcgP0ozx2Q3atMGEek+h6G0FKOERh5MPzj41y5BOKZZfIeX1s4Dl9S
	cUTeJLKBdIc/99ngjPB1Po3RKT2RwCKJS+7VS8xo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803a57403f-b6c2d8f4-d8ca-45b6-a2e5-3d56f0fa07df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab9f0ee35f3106e725eec60c7843deea6b134054be31a26a3a76e82c080f27f1
Date: Mon, 18 Apr 2022 01:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650246238
