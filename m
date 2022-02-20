Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5637B
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 15:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645370484;
	h=To:Subject:From:Message-Id:Date;
	bh=a94rKb3jRNtCmBuCXDjmcelRFyS2KpZOA4yLzec9XCg=;
	b=PznsstSE7wcXaEW8V8ZG+0kPF1t3cY79CNOKKvfQFjdPHXRRgccvkQvkI1BKrxAS
	s4LHt5hDb6vPkRLVpAAAHNUdanfcdALfOX00UwKCStt7NqM79Jukcm8EqmsuHQh6K1v
	IHYOaFrf+S2NKoFeBtSIt10hBcPh0Kg7YpYjLQN0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645370484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=a94rKb3jRNtCmBuCXDjmcelRFyS2KpZOA4yLzec9XCg=;
	b=ZHF2LqitSHfXcKXVP2dWKCFYwSYAL3BG4dCFgkb7LWHTe4k2KM6d7y1kVEphuPGl
	H04WzVodiYk3hz3Q9dth/b+A3DjRCge7us6zzNCHKmhxR6I0JK+cv2yiUUYdmqhpg4B
	Q/Nm6JmDflqzVQpsnkF2JVkcC2bmqFosvtrZCXt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f17b92843-5c8ef0fc-a12a-472f-83c8-b773282162f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 448d5124747fafbfe252978ed615882a774b7d74df4b62aadd916c7e2837d963
Date: Sun, 20 Feb 2022 15:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645370484
