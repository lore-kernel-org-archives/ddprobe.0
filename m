Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E16DE2580
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 17:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650128818;
	h=To:Subject:From:Message-Id:Date;
	bh=z48i+2ql2LelHO/iBL7AqSL7/gIehdQxbb2wxhvkg+0=;
	b=eqEYt1J4JKcJhhDtv0UGuhnE6967tIwhPO/4L9iLkFC63BVg65u9M4+qHc5/WqNU
	kUaHZ4P3+gFm6XuQhiMhNP3oj0NSsJNfQx/3VC9u9ihpgS3ut5QgSaTTZGZrXeLL+FL
	tae0wcXFJSgnSCFUsBqyos0e++ooDS4vmWELWAxg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650128818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=z48i+2ql2LelHO/iBL7AqSL7/gIehdQxbb2wxhvkg+0=;
	b=KmsxDsqFt+QrgGeklhxvehhjJihlHuo5xEzpxFNXm3xKaHO85i5Ul2cVOCGUiH2p
	wGKdquwAepVprx96EbZuG6tq4AygBagpD/QyA3Mq+1nIhnHaixIia/wMaKH6bcRcym8
	pH0/nT3ATUSHlcmnW8h2jLpIS+tL+AGfIpwaDZx4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803357903e-614cbd91-d790-41ea-b031-6ddd7149220b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b3e8c8166f0b12e50736a7aa069e3c04142ad0e1b99d7c3a7e55f71e6aa891c0
Date: Sat, 16 Apr 2022 17:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650128818
