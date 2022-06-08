Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E5397B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 02:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654655579;
	h=To:Subject:From:Message-Id:Date;
	bh=gWFDkI1tFUjY0d7Xq8qAbcvOSVFXoQI7prrbl6Zykls=;
	b=bE0nCcbhOvr656svZbjBtKYifJYuDNW8pgBpSSGAkuWqIZVq2ArtG2LXX6GoWKgF
	geNnQtdTlZdZLjWo/CMYtYPF7/kWogMgLp6xUPlorP8zcTfW0UTAk4hgbmxQ5y2Nnd7
	Fy+E3w+bpt1TjTAnfoeZ3hWxjqyxx8anyP7F3Rgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654655579;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gWFDkI1tFUjY0d7Xq8qAbcvOSVFXoQI7prrbl6Zykls=;
	b=C1aYGFYAUd34LUSY0GU++1RyGW8MqP1DJmwshZpUdstlsLxZZ1kbBDbRpl7DOl58
	Oor+bN+4a8Bc0A/m9op4ahyaJr8Z5FS3TWefIABfhh0j0RqrvBdigUOfHQuozcS0FyM
	A/nZlvgjhEtV5pBRwKkSFxuarhVZnvi0ypQ9gmL0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018141287540-95bc8f9c-b78c-4025-ba59-ba693a57e6ee-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8deaa4a8c35cac6dc1f410ea91e09575ef7a8f0602b34923c28801a81cb2fa33
Date: Wed, 8 Jun 2022 02:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654655579
