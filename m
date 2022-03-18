Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83C8F15AA
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 06:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647585985;
	h=To:Subject:From:Message-Id:Date;
	bh=APwoaSfrZciPwC+zQZXYKALIThePgr2Xn7pROKcEmjs=;
	b=Esz2XyaAj6Cp8qJQmdLiB6gKE6ytO70cZYwNkYMwKuFCfuBBX9rpZxGT26teq1GK
	iWWpDcHjebIBIO3K4ZbD4KKWdmCZmkVw94xSHl6cO5TT5HoBFptgIpoH4anWGHJBpz1
	EH/VQdSQdsaJ38r59sVD4rWtn1CmcyzrUYEAIAY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647585985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=APwoaSfrZciPwC+zQZXYKALIThePgr2Xn7pROKcEmjs=;
	b=RU7tUTdNtbgGoJbYqJb3hWtu2MLQ1oUJP7t49+X2Dc8vHzQfKyzUAFEFH+53hxKY
	NfBjKqCyD++6EVwEi/TVqoq4qYSbTmbJpqTL7UgBWdYHlcRPNCeE1v/5o+kx1hXaWBD
	fFjzw40Fm/AipEskxjTkVR/Rma2wBWEHc/K/dj4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9bc70164-f4de4c8b-8e10-412f-aa26-e607497ffdac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c856cfc11dcd2d00b1856a1fd0c07298dfe68ba0a4893c674ad0fd3e1d510d32
Date: Fri, 18 Mar 2022 06:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647585984
