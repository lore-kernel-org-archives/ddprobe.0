Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 824117B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 06:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645425085;
	h=To:Subject:From:Message-Id:Date;
	bh=u7LKpF9HQ9IhpJkkQuZq7yyCmMwNUr4kMhvMSB82Zyk=;
	b=XZAzpNTzNsrTPNwrrWyoeRfXCzoJFeJ/yEJKWuD1FYg//0gB3893KdVtP7W4lhpl
	kIW8qvheBVO4+UcT6Lj6W173WiaynFMmSa1dDaSKTXW9slHOLpAqCjdnz7+s2zZgSYo
	gi5OIU7/Cuu5T9RTKBhDKy0BUIisiQ5NUfxWOM9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645425085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=u7LKpF9HQ9IhpJkkQuZq7yyCmMwNUr4kMhvMSB82Zyk=;
	b=GO16MPoenEsOFxrIDJ/3hGDn5ZWP41HpvsifwfaRgZh1FePSm90tPMXfFVkqOJpW
	1FghIgr/8W7Cz7ylnIR6K/G5FwkZCKqegURe4lraw51/v3DCAsCg7oJ7cgYZP03B/08
	Qtb6nwA+f6e4DW2lcdimuagoQBkUGxY18quOYMms=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1afa495b-573a17a9-35f8-4008-b162-67909c28973a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 151b8024f59b65e9b4b7c84ecbcfde774c7d077ff02b7a67d03ea605c56d8f4e
Date: Mon, 21 Feb 2022 06:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645425084
