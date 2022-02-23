Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D67DC8A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 16:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645632384;
	h=To:Subject:From:Message-Id:Date;
	bh=KTCE9thQ161hpwB4ss5rVsahAQafbIpBqroXQDUx0yo=;
	b=SH0JvatSB97IXeukoSgZCbf6Racd9TOD8ftnbs/rc5wQYTJl4+TVhjDwa2l8wI8N
	i5m94aWA6Cft15qMmxaJAABPJc7vzGA8qgKaJg2TYo9o3oSHK6lsnQbDnA8EigO4mkM
	ao3tls9vvglYzuRfR0BBLE1IPq0LPRMdLjeYFAlY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645632384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KTCE9thQ161hpwB4ss5rVsahAQafbIpBqroXQDUx0yo=;
	b=BkTZM/2uqNoGwJu7CMRGK6xBO7bGfQTvpU/5zkTiiKGgbtxko5OlQ6LduiV/KYBL
	+iF7a3NM6WzP6Ixdt5/zhI7+pI/qDfa66k7cGYWIA0SmZii2oauRTTeNq31XTO1gqKk
	bAmFFj6+GIAaHWPbhfad1DPrvzNxt6TQpmOJWpsY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f27556ee1-c51edaaa-b8ad-4b65-b546-f3558ce791c7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98801eb2fe42dab7768372be6b48ec8f27ebb9b3fa36fc0005260b709257363b
Date: Wed, 23 Feb 2022 16:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645632384
