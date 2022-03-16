Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AE337A
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647430285;
	h=To:Subject:From:Message-Id:Date;
	bh=kgKdP7hBV6PPnFLHZU93DvaIc+3ABnHCfFlYHNMz/Ds=;
	b=UCeGlfkbOqwXnSGljAAsEK7D5csPicEXr34Fyv5xyoagRQ04mP5/UlVFopRpV6op
	4uCsRmgHSutD3G7AXMK6Gd2JoXtqFGbJwxi5X46MAD2zK7hUtWHX/gUtY4AuLllABMG
	rgtkXc74PL/KUgw6meW6lenjZNSbdx/W0Aqyoqx4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647430285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kgKdP7hBV6PPnFLHZU93DvaIc+3ABnHCfFlYHNMz/Ds=;
	b=NUyq519frbwspOUYHBpCI5i1pAZjHGt3EpDEiJxC2t4J2Hh6OHQDn7VS8QG6oEgp
	wpuew5wHavd2g5MB+3lIDudWuAb/ZmQ6u7SGhAjLaYV4UfWX3vTOMTljQRUBbQOBztE
	V/9ZQiW2SxzxC7d7BMt6oeLwH7Bn/nl32pJ6gh8Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f927f359d-0ec7eced-af07-405f-a61f-fa0890682dd7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6497e3b331492dee68a40930e07fd0ae2fa64102be6ebdbce915b4f359b1701
Date: Wed, 16 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647430284
