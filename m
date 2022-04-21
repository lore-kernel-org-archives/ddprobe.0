Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99FB46A8
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 07:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650527038;
	h=To:Subject:From:Message-Id:Date;
	bh=rfTy/r1JzglN3ZeQEWLNRBvAg0hGQ0eQ5PbRESFRDGI=;
	b=cWd921dUmdknCNUoQ2JZRJgX4zyZsodZ/HPPdzR/T8IKgkqOdMyWfLbHs1J93qqh
	CahgQDJtSLDMuSf0orHWzuy+/j/wGrQATEFVTRAUpdSpM36Gko7Q7wvYgNRpH7We02u
	NHe4uQNXb3MulKaTaJRAlIgX3sW3sngg3iRiUzjI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650527038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rfTy/r1JzglN3ZeQEWLNRBvAg0hGQ0eQ5PbRESFRDGI=;
	b=KwEcKrTFYJFwX3KsQhfwj1yjW9/Y0gdBnKTLak52Bzsld9H7TLN27N8BKnubH6D6
	e2I27sajvKOAEndjrFKXQdWA/05ya32Lg70tcT6SLVikjulrT8CuNTa3X9LD7GsIZKk
	CrkdGcVz5a4F0sUDX5Dpn79ZTiv32pIPVXasHz78=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804b13eb19-d8c49340-a548-47e3-a772-c85b5f05680c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f39b5c281605e5173090fcad46c7b0f698eb909572c8df63ba979726fb1e33bc
Date: Thu, 21 Apr 2022 07:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650527038
