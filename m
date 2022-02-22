Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F16366
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645498884;
	h=To:Subject:From:Message-Id:Date;
	bh=ZSZaTMa1sZugOd6Y0amiGtPJ53uWbFcdtNzaif+7qJU=;
	b=m5bYeUM62SQeuk8szfK/kNkxu0QQaL/gHDoGthMI2SEZevkS5eLKrDg1QxdCYbnp
	J+LR+rwvDgxzYjsLwPs3KG/fyaC7RTxxrTthWhUJpQCQv1uI6FELqYabaBwyVBxzfpI
	gIRmVnlSBSFrkFlQftRul10sP+ZDfeZXr1/e4SSc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645498884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZSZaTMa1sZugOd6Y0amiGtPJ53uWbFcdtNzaif+7qJU=;
	b=GHAwJqOc/REl2KqJn61pfLoGNzwQhMk4S//7BbCXvKF9/AeIBxq+ElMpgVTso++M
	qWq+CyN2suVI7pgySeHm4qCPauLHk8u/2a3CucvK65aeocPb5cL2H4Sq5Fb0Omep0pL
	TcqlbqduAgyPm2tOrQkm/5kTWmA27slj8gEX686M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1f60627e-be564c99-4d27-4fe2-89aa-af7dbf014c73-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82c1bc0acd5ac064a0282482817bda2096fa8aad1a6a88e09c21fd59762d521e
Date: Tue, 22 Feb 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645498884
