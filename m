Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96107B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 02:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645668085;
	h=To:Subject:From:Message-Id:Date;
	bh=7y89Uad0jYxTexLUAVx1HUHWiHMxF9mMVrnH/efvMVI=;
	b=ahKCmfBxqgE0H5XFZrT6hxssTXX5MDamU7MoUoErvmRdiC83I00VZPNVRzYhgf5q
	QWVvuyIpNlhHzTcczebpvcGniV44OItl10/xBjTkQZkWIdoDCIrpXn02/Qe0/mO81D4
	flK3rXI0dI3FKEQN5s9emnz8Bn4X/p1vCIk2B30o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645668085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7y89Uad0jYxTexLUAVx1HUHWiHMxF9mMVrnH/efvMVI=;
	b=MDM9fbLGVdF2M6kmFM3sL4FPUZkRMMET3k5dDD3D7aAwxbL7mfyRdWmczhpe9FAv
	dhxxI9pdJGHXD9W2B4HEZzOFOxfcjP6yNscJXtJNr1OrIJF1xL37od+jDOmZ1S7soF8
	b6dnTU8K41qmBHRa2TxE0u36BkTfkwzwZiA9+iyo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f29762c01-a122b9ad-2ff3-4e3c-8976-585dbf38e791-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10a5db4959e152ca87c96a43a8048319aec8a2e6ee1db3e8d3678476d2841a69
Date: Thu, 24 Feb 2022 02:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645668084
