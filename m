Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77AE846B9
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 10:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648202638;
	h=To:Subject:From:Message-Id:Date;
	bh=N4NS4V3R6cv8PVcI2bIKDKsGVQg9IiT/1TQyeZnUav8=;
	b=FR/MSBZJH22cVsevOPyeqGQyc/iN7V73YbemedqhUnD/ZUaIeO+SD5HyczM+XZx7
	2ts7IjrWRcvIvz4isjZdy5XDSD8mRtCql3DtEeLfo799XQHTyH0+Mtx5pvdbenf7DBT
	md+1ryDbn6j29MI6f6JKkrX8dBnfO6E8P36eYiCI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648202638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N4NS4V3R6cv8PVcI2bIKDKsGVQg9IiT/1TQyeZnUav8=;
	b=Tdr4vjlF6EkuWUwSVSwQ3ggaY6Rebj8E+AB/ipKfqskZB3Z7E8kNmI/N+AfXr9Fx
	ukHh3RXDCqCOsC3bH+SJYrnL6msXdGXO/XJ7M0wLxM9NY8CwsUkb0e8aZk44yYq9p22
	csyYNauJJlqOb3Aj9OWWOxZhiaos/BJBtO/oZojU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc08863ba-8bcdcecf-4e98-4441-805e-72721bdb1405-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6363e922f66942543248e177d36187c90ea6728205aeae1775ab8b51489a4c6e
Date: Fri, 25 Mar 2022 10:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648202638
