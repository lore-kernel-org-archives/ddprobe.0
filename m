Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BF227E
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645402884;
	h=To:Subject:From:Message-Id:Date;
	bh=eZn87oKPRAzTB4PTgHW1vga/HeBMNU6Uvq64LrQ9XQU=;
	b=DRBR7ZCj3TbrjxWxrZRlafg4iaCjWEkDuwNojGcmE5kEpT0nFhqzhK+j7cRaOSd6
	Usnmhw7SpIRtQcaHAXfM31YFk4iznAqDPzwX/6xr3uM7QkLElo/iBx+ENTDpp7PXPvI
	LuyK/oFDDMnQBD+dzfN5SW164LKntThhEBt/sIRc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645402884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eZn87oKPRAzTB4PTgHW1vga/HeBMNU6Uvq64LrQ9XQU=;
	b=QZjZWLj4TgS1+4CuZdWrSnrturghHlRaFyltZTqtPM5TBkocuDRHPlv2bBeO6CH+
	5J902Nec9OOw1HmerGXM99NRp4Fe97V41pmZ3fPxyFrChDhSXbTINLXTzKnbG2yXprO
	v/Idjun9jvZ2i3AyxccrzfTcWxBltFuscV+WZoEE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f19a78aae-30854403-f30a-4a17-952a-03d2a0da654d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 841b1cbee8428d8e04b880600f6c3e8eeaf7829c01c44f68afc55251864a584d
Date: Mon, 21 Feb 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645402884
