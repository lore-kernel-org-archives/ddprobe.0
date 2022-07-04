Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D9B215A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656900412;
	h=To:Subject:From:Message-Id:Date;
	bh=Zs2SCN9ft30iAbe9wdYpDKn8+eHXaPDpEZREKSIW/m8=;
	b=Lw9haXtXJ4YxveBxj1FBsfzwTB17cukwVOQOZpx876LVDTJ2iIreINH3KvvhO6xc
	cLWOFkXAW6Q5o0qGcxgwvHN+48MsE/4tdpj1zLw9CWbfRjIhpOjgYKp8mgaWkqk9HVN
	hR5E4f+yLPHnRLK3TFX8s0sv5PBdHIMP7gPsfFXI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656900412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Zs2SCN9ft30iAbe9wdYpDKn8+eHXaPDpEZREKSIW/m8=;
	b=Rs2eGHqVtNtww1ookAoUhZzcc50R97Y343eleRuaI6grXGjQKBdBumpXj8XBY1xz
	thSeMZa9zQHMgo2x3/ENJEAS+Z+yZphnpXjYcDGzgo3m+hulz60sDuLf0hEii0/4gIc
	JCe4dy/ab63vLljh6taMnT1ZjgkmO901TluVUoC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6f5e36c-08ec5373-ccd6-4301-a6e2-f62b2ab89c8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b4327b9d0fde9da024574d9fc5b5239dca2aedec9775606774ae0138e692f76a
Date: Mon, 4 Jul 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656900412
