Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30878366
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 05:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654063019;
	h=To:Subject:From:Message-Id:Date;
	bh=Z83BTt6I/Y0JjZUUIGMDqWce21Y8+PJOKBhf2OXRZvM=;
	b=ckY+cHwuunIA6hD/jJR8Uxl/Enib+5rvT6O1zxgXgYAhCRPWdswvck4mFjGJ/5ul
	CQ3ezz7ElvyRWyTmzAjeQXl8oacElX6OfbRbPRkn6jqTJMkRE+p4THJp6pSxbrBdaAu
	wbRVu31PQKah1TDrD5lv1gGezPpFxB3XNbGI1/Bo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654063019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z83BTt6I/Y0JjZUUIGMDqWce21Y8+PJOKBhf2OXRZvM=;
	b=M5fHe6gAVrUwDx+kpliQ0rVRHW+QWPH7CudPydB0WRKWf1U4Ro8+nblHRhIWWGbN
	fomCSeMlRFPWgefdraKQVEy3JoctiFjgbN4sXkoGVv8NfUSRifpzcH58UwEPBE5Ubi1
	0oqO136wHE5gCcvDw9haeXhzMHLPsjY7n+fip5A0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811dd6b534-a5abfbe9-9d21-48be-bdb3-46db2cc8b71a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a189e5c458edd796fb7b6818aa034097aa365456c08918182b512a2d75996ecb
Date: Wed, 1 Jun 2022 05:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654063019
