Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E7B7629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 11:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650195478;
	h=To:Subject:From:Message-Id:Date;
	bh=whg52YP+KEt0MQWRAykd76vbwaw7pSlITICWt7fIDr0=;
	b=Zg5iOs86IjsoCXhzHu0qw9+zVamNM/lEmpJyt3noDVYMM4wuT/MFvUUa+YieZJra
	/HKyLByD5roSeUN9S6Vyc1bBDNNZkBCzUkFiLuneIQuHQ16pgWEDPK0nV3O1hDa8iH1
	f1iCK+5JjHlDUJCTWVhRfEx3mRh4TYRu8y2Zfi8g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650195478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=whg52YP+KEt0MQWRAykd76vbwaw7pSlITICWt7fIDr0=;
	b=ZreARWKK7jxSP9VaLCxjkUNmjv8OiX56LfOGqkhcfs67pkzjE2wqOwYfyHMYssvr
	gl22CF3xSG0/WaJHKKrHgUVVrHFd+HzETnWnJGVxqUg/FUkIjigJ2PjFh64KgOHNM/E
	4r0zS+At3gfqfMJRdZhVCK263BMxQKtgNl6D2LgM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101803750b771-5f5aabd2-5e20-44bf-8986-6836063482a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aacd4d5b9951feb584db6c8fc209293d7515ef19a072c5db2762e929e74e993f
Date: Sun, 17 Apr 2022 11:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650195478
