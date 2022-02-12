Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C691A7C
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 17:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644685208;
	h=To:Subject:From:Message-Id:Date;
	bh=5Akc77ElyU6D7hXFjj8CkiiW1wo0TcEPsk/+pi1Q83E=;
	b=AzCnc9ydBG7Sy+CJBkged8gJuGFU+YnHygYVeDpw+MWRnxkJuTytQzaH3RIvgp9D
	muKfeyVh/YkemufljD+TdQ5q5DCEYqDskOs4EtGdpN7aDPW0GaJq2VciZEdKHFbkPvM
	ItZyK6IQun2+ohxNG2xzi+cCQ0zvmR+wrZbUnBMI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644685208;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5Akc77ElyU6D7hXFjj8CkiiW1wo0TcEPsk/+pi1Q83E=;
	b=HnrupMPveWZ6vklPnHA948UW5KU8IFFWhqKuUWTWWWWg6oe7gHESyboYU9XwlB05
	tt+9sn7PCI10EUl6wR8ISrhVO2620UBmuCi/GfLptpL6AuQN8v4gpFSFVHbq3EQLeZ5
	Uo+b6OS4EGtvDcTII2tnTDxxIBKuI/6rlTXGjEeA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeee0a9fa-84a03d69-957e-4060-a179-d2917676316b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5672060fc6baa15af4271596c9c809ae79837363091d819468246ef9aa77ba96
Date: Sat, 12 Feb 2022 17:00:08 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644685207
