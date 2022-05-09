Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E622D1FA0
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 14:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652108218;
	h=To:Subject:From:Message-Id:Date;
	bh=rUYocst3bYhxY3HXuHS4R98Xo4MulLsIQSopQ7znFjw=;
	b=DLo4C0czQcPW70x1MOy1DBeFp7nUGM7dTb++dNQ0QmYWIOq2DR8JmybzOk8Zq+2g
	Fz2X/LOk8MxE944SehfXfKK2zBWs84agycdfEhuKG5hpXSxm+h9Rcbf2ABjtNobEoiV
	H8FbjJt2Omh3Yruh+ZKkjDvxhcvIdK7Gi29KQTuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652108218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rUYocst3bYhxY3HXuHS4R98Xo4MulLsIQSopQ7znFjw=;
	b=FtaxiHF3sJm+Efckr6U7EFYnbdriICoO6LB36OdOPknHopNYvrXAf6zqJtTDDPxZ
	TS0ISlBfhxMqtM7/YJF4YbV0yyin/l2x1FMjmWKwv7YWIwM6KUNw+sGrq9MgzSWvd3q
	C7rfeOterfZfzuJMMXlNuOGyvvt0KuRKxpNlq3bY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a952cf82-f031fecc-5067-45e9-a5a4-62f3701658ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c470edbb3637b7ee33062bce8e6a6234f2a420b41904c4487a92fb9214aa5df1
Date: Mon, 9 May 2022 14:56:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652108218
