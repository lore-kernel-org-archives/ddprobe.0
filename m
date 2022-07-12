Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C381FC1
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 00:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657585012;
	h=To:Subject:From:Message-Id:Date;
	bh=IK6vWLZtVv6Yr4tNEkPM61tvZZNYB7aU7qoBSyVlkYQ=;
	b=YNDamrNFWxyHc8STHVMZjSOIAQtrWiJvKtIflxqPi5HHuc+ZLv0lC4fe5hAJz9pX
	F9dteXIhGXpQF5wmD+d/c4thUAF4/w/+RLuR77suZ1rMeDv1Up9OQ9cZsU/mKx4JHUa
	cshP6D6BwD4qgPDuCYJb/FpRemIvkoWIKm6XGklU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657585012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IK6vWLZtVv6Yr4tNEkPM61tvZZNYB7aU7qoBSyVlkYQ=;
	b=gv0MhEncxTCcnfmN+Xwg4LWTGF/YYDlHmT1Y4k7icpwh1x24Zqp/4tWD71dpY1lE
	F5DHJfF+w2rkyWmptabvUYDfKx3WiHwghxzmL4KsIG6zjTHYGL7vUIZTcaxrG0wnAtS
	93Z+WPutPWS6bJ52/ZqCfppZJ34ritCkyyVHwrlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181efc40e3c-9c50a0b1-c038-44e9-b2f8-09302f5a6229-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 191457c16cf7654d709353e80523125985660660263885822e4cac66b9a546ec
Date: Tue, 12 Jul 2022 00:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657585012
