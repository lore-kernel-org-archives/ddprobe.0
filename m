Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BE37A
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 02:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647741984;
	h=To:Subject:From:Message-Id:Date;
	bh=j0picy9I0FseSsziaa4sRyCY1KLlT26aGArfkhBzK/Q=;
	b=OAzhq4CYSJfjd0jU+D4jiF8JtB+j3B64UuiV+0VGZ11MsEO135+trZlmw1qwaJ0o
	KRAVSsGm1A2CLOXs0S/Y2VLmqkqFLEQNo5hdfwCVvyHHr5CWbZEvBQOZ0cOFxz5U8lU
	o04hrbfi1hX60hXkwWXBD313Ny77a6I/gN1rUNSY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647741984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j0picy9I0FseSsziaa4sRyCY1KLlT26aGArfkhBzK/Q=;
	b=gugUeyn9e9IazOzOGbehhY8RPdN6awYz1Y6y+m7M9Y7Uc7AfbIjoD9XAVhZ3l/3s
	SGv6Twilyh2pUhFTs0donMtWAJYfXI6s9RqCMY1Qg+gX8ns4yGu3Y8cOzFe9YQhFmag
	XK9JdeLHr74Bo03+jCsAhVgVz1rDH1HrDkyyzuQk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa5136007-0decf819-128f-4204-8e5f-bb19b163e4eb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 396a2dba37e46bf7d336cc63a4698923c7a85222abfb0fa065d47937b4d69a92
Date: Sun, 20 Mar 2022 02:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647741984
