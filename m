Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A0477A
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 06:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646806284;
	h=To:Subject:From:Message-Id:Date;
	bh=PdvifwqF8hC9riH4ANtJUYz1b0EWD5wEaepTLu789Z8=;
	b=AL9eSRqapMjmtHPl09y6NaqUecvHRwZ5FH2a+M4rA/+BKLygzH5sS54PUkaKUpfD
	cJA5qjEfoYzJYEMTxu1/qbOwtnXCs7qrtkLz17HnPzu/ueh7pzDbFlsjH1vXXgIdf1u
	Tqej4dw4/U/h8Fn0x7pcEv4e9ovppUSt0jep31+0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646806284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PdvifwqF8hC9riH4ANtJUYz1b0EWD5wEaepTLu789Z8=;
	b=XGv/wAeuCk2SyFbz1sKmx04C5a0dTOMIDjrVcdu86TR73bjFgCtdHBj9/3FqWWUN
	7MguQ8jacNToyImb/r8gmGoqGNgbtsE18Hr46mTcwwEc4EuLiPifHdLtIsuMDZKwXP9
	KAHdRN1+DFEn4V3K5JAh8KT37JqtgU6S17lCe0bI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6d4db9dc-60f3c560-38d3-4cd9-9f5a-b94fffdc853c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15136c5ac227a0d9fff828941192b753fd6ce676eff9dd60950902ee4a61a9ba
Date: Wed, 9 Mar 2022 06:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646806284
