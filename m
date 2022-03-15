Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFCC10F3
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 00:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647304284;
	h=To:Subject:From:Message-Id:Date;
	bh=LbIj6ebHnC8m2zC1Nl8ei1lwxxfhF4yFuHmxCCc3vIk=;
	b=WZdoMkoalkq1QwllI8O48JxAt4pGbafe1iL0FWqgpp97K3Oi2f/H9SHBXKYFKRyv
	9oNJUsUHT6/4/9wP24kXSisLB/9jhabGndDeDrmavR3TbvmIj87YonBKhlVZy5WhHhw
	eL/OHY8kNV9W5EcNuvez+A9IjoOoG6mEzbtBKJUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647304284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LbIj6ebHnC8m2zC1Nl8ei1lwxxfhF4yFuHmxCCc3vIk=;
	b=fkWLaB2af9VRK6v+EQIss5nmPpSEOaclbUU35hHXJ2SbA77KIZ1+TZahSocWNGow
	JtdWRhCRCKABS24Qqz2J9TlT8cMO8ScOqlSFzZyZcr2e+kNosF5Wl3pUwb3NZloh3zr
	IUd+Ge07HlCEkQq7CoZya6KGPmfyXsU0ddymrHQo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8afc9a34-90510cd5-02de-4951-8550-2aa494dec892-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 47d91d5d993255122f000aef98b564d5a8cf88bd34539acea7b6c2e3f79bf52a
Date: Tue, 15 Mar 2022 00:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647304284
