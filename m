Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0477E
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 13:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647176484;
	h=To:Subject:From:Message-Id:Date;
	bh=MmYrVJb19pS+RS3xvwyzuM4uPvWA8X+vy9ACgWK6tUs=;
	b=dD6yozx9Tg1Jfqh5DpTkonRZlLyvH3rU1WZKBg6tGdd2ibVc8bdKFb2nMIFXez1G
	AkjNCUzzZfKrAnv/UDwVJbk10b1hiVC+OsPDgh23nf9hiJAywiRE49QKb5ZG0mZWeVs
	tKnQ1CTKJgH3zzgj0kzZwsmdesaQD7OZHCzNSNuQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647176484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MmYrVJb19pS+RS3xvwyzuM4uPvWA8X+vy9ACgWK6tUs=;
	b=M7/ArJBX9tw/ceRqdx6MroBFsuqjhjJkyDyVJ0Vsqm4u4hzx+ZpXfQsDE46xn6KN
	b0oMwize0V/nvgypkZRL0q+2tQ/mDQyfmF0T2/s2+456hIcg4KhLtQYto7VTdOW+y65
	N3KFYBo4LCnzI5hBziaNSOLhhJ64AzyzI3ePLHg8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f835e8794-69b0115c-a547-48ce-9a44-0f587c25d78c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87404cd84c092517a3a0c5857585fd81241e48a9975cd28d57d4168961dd720d
Date: Sun, 13 Mar 2022 13:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647176484
