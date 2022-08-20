Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5416320FF
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660995652;
	h=To:Subject:From:Message-Id:Date;
	bh=S9QxU/JQuARL78XYNarW2fDHv8wiaFBTaexpxHbm4k4=;
	b=ip9mlodeXcSUGzp2RhcJrQwxpmx39Zf3+3ocKH+mX+FhAzy4uUjRDaeo5VKleoIS
	8PZ7cFnM+diKICYl0Sio9VzsBRvSoydgWsc2+XOCoHdzzl5bYt6zrZm7bQk7mLSmH4l
	Qth3CUhc+Raan3UrZ7wjCeHUivUog3s8OIl0PfnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660995652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S9QxU/JQuARL78XYNarW2fDHv8wiaFBTaexpxHbm4k4=;
	b=X38f4ZYfUh+73GfQZD/yG5HEglRtlPKqYIiFrCYgQdCig0serlahkt0IFE1yUOr3
	Hiit6Y0jNZ5mHfmGAD/kyyatJg/Clw8NLeaOvTCA2CoO1y+xpMjgn5nIQfggze8MYgN
	8nXQRLf6fy+wwzfodC1z4c924p2B04tGUA6QdECE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bb0e4bcd-02c11393-6901-4500-8b40-cc3718f91b74-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 24df68d681d9935dfe3652b3eb8a2e06d5636c9eb789ff79c2c18e1fb1443b97
Date: Sat, 20 Aug 2022 11:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660995652
