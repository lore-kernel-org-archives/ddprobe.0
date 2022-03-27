Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E93E47E
	for <ddprobe@lists.linux.dev>; Sun, 27 Mar 2022 17:04:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648400698;
	h=To:Subject:From:Message-Id:Date;
	bh=X7omEnbmRqq9ygamnlLXJkIR4tT84gOjqppb/AllCmw=;
	b=dShsZQPSk4gDHaBw22GkLD6PKu3pTsaI074mQHO+lCIZZromv+Ju0axMJbtuMVgy
	x42pOQQUbZTrMrDcmatgRKsxTq4r2BljQRYnTk0fpb0shhM9uRAo+2F5kilMlwz0wjw
	C8l+Uf5Rj5zlXiFeoelaUs2VQ5Ypby3iEu7i0b7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648400698;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X7omEnbmRqq9ygamnlLXJkIR4tT84gOjqppb/AllCmw=;
	b=DP5+LTHzEY4rOwfTzf68wweW9aKOeC7O+wCcHaR4broR8jUZbpz6d5BSooApi90n
	TvvXKv9YJB6EovlfxKF6hA3PoosNkX/CHrB2I4FRtyNLPRngUGdcIs2Npw0v4AyYgKc
	I4XPAwMflBZ1AUjK357C4+mA2u0TTyVliBs/WOtY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fcc568b77-c513099b-ba62-43d7-9014-13fff55540a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9207c538baf83ecca6b8903e5e92213a9d4e4e0f938c21519e0900bc2887190d
Date: Sun, 27 Mar 2022 17:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648400698
