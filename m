Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F032F3234
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 19:25:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648409158;
	h=To:Subject:From:Message-Id:Date;
	bh=4xIN+tuRKJIrrwxnN+z6tpX6XwqcdvtFVacd+w5fhWo=;
	b=BqGLPToU1PD2NG8d/2z5IYXNMeS93cgpcgLeqxU2NI3Qvt/YbobLZ+LYDWeg0vvW
	d+9rJFkuYqlfx78Ez8uDe+DIgNO2rQiCcNJJINjRu1q6u4Bv2dOIr4Lo0Jh4hCr4jpI
	Bnab9X5nQGDDBShgnNqBMh4uXMBm5gji5pUhGuA8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648409158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4xIN+tuRKJIrrwxnN+z6tpX6XwqcdvtFVacd+w5fhWo=;
	b=Jo3SdU0IQyLAmgbcGKHL8BFNWtdQBhmIz/wJCBTUs+6zJmNJ+pNCD+YwDXi3lsK9
	yqFpcpTisYTl+HrojRpeXfxE8YA5oBp2MvJWxozPjgbx6Gqs59h9Jmoz2oIrlyjob09
	6XooEhhDUxJrka2yD5ZbLwKi07pI7EmWzXiBtcvA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fccd7a258-acf9c682-ef42-43da-a719-498c9a44f641-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fc49c5c76a17acd06886724ccc175252fd88f224f83ba3cd4a12e17d3413376
Date: Sun, 27 Mar 2022 19:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648409158
