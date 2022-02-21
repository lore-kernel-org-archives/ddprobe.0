Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A908B20E7
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 19:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645472785;
	h=To:Subject:From:Message-Id:Date;
	bh=GXO9CX9modAPdWEFYWLMZ9Vm7+L1tsz9+3kIUNxvigg=;
	b=is07G4OxOL+UIMJ9jzbYG5iMb+KZJxLtY4ojgL+VUAUiSpL62DjS+8DiwGVehNtV
	R/UP3NMPDER29J6R3m+406RxSkyh3VbzckGxfiMS3yTlU7amj95/hzIiiJlqSfJ6YMC
	qzGrk5Yd4IridGx5oRGBfXU1AodFtdHMQjjVTIbM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645472785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GXO9CX9modAPdWEFYWLMZ9Vm7+L1tsz9+3kIUNxvigg=;
	b=XPudSkBYo96GOlSjJnnYRwelXqhURsLDEk5EcOJzkNX66wCfkrJVFti85wKISJ1L
	paw4LZDd7QoGtiM0sJJ3VsJWTZ24DtFAmJfMsKfBqYIbcCMLqdRUwW5yHMrEduDVLNB
	5dABmaKoeQ7l6n7itz7MWIxa1pb6X45CzD6RO0ac=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1dd221b2-098afe0e-75b0-46fe-bbe2-1dbc8e5b6691-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c6f65745b4a399c8c20d8e65d5df3ca0254b48eea5ce1e906f4c4efc8bbdcb8c
Date: Mon, 21 Feb 2022 19:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645472784
