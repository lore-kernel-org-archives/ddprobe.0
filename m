Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099D01FB0
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 23:55:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652831759;
	h=To:Subject:From:Message-Id:Date;
	bh=sUPIndnjbb1XPb56p4GOFCqmZNmouqSL+oTGuIgYfBc=;
	b=bv+dxOfkkDfqrRRmXRE8X8asalGPOzWl2hE8nVMMMUtKYcXLSYhAljEY49CFrEQO
	uJ04B77y8nTFXN3j1b4+h66oG2upiwp1Ku6vSknBg9B542rT+m3KIJCHwWOSWp+XmZq
	EiAKcwZX4dwBk8b4wp1p0m5sqBzHrM2jf+45uKjE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652831759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sUPIndnjbb1XPb56p4GOFCqmZNmouqSL+oTGuIgYfBc=;
	b=Rz2MQnfmYHqlBjKwoxkt3eewWpXl/t5piNtceWdLm3THfOwfLJb9eljoFasq3ba6
	3YhVWG7TBPGmnvaJNv3yf76ylMD+Uc5LF1QWjBoeSvRKdfEX+Q7V8DIKzPEKgs/Ho+n
	L0eQePzkBU3ccVjEvKTbN3ax6NDWJl/hx7NzUDZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d4732c36-70c2cb85-3959-4af1-ae87-ace55f34ee11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c033ed1ace1bc50d6fe3e2099507f2781ff44fa8f5d8fb4785c735d3c9d24b4
Date: Tue, 17 May 2022 23:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652831759
