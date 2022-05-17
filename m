Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD90136C
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 10:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652784779;
	h=To:Subject:From:Message-Id:Date;
	bh=/ty24r+7es/ZgerUuk/8rGhAWx6HXG/Tlcs7tdh4aQI=;
	b=cCI3+RdcStb4FJOoIotfS4PvHvvs2psPN56f/0eEEfBuWoRqNHwwQPHePhaAmmAy
	o30llCESBkdZsdxMQrHe10ArHX1ApQcU7V+dt9kb9C1WJICZ0zlcZ0qtgIQ4ajKqzwJ
	qdXizaz/aH2PPxwd2tqMwmM0KOMr8x+64rQ+7e+c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652784779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/ty24r+7es/ZgerUuk/8rGhAWx6HXG/Tlcs7tdh4aQI=;
	b=OHu+sgjFQgrW4s+8Fook0Vo4V42BWsN4JqkzvDu95gZips6VebZxWMXDSeK5CPHw
	NtmGK3e7ejQWqu6sHrC+8JHep1dEqh84sDxpmVKNBliYQylxbm5kLrYd7K6ws1f0eSn
	6OyBspkOtMWXlHchjzMHg7THti3FUeHNOMvjBi1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d1a64fdb-460e84a9-1044-49b4-b784-cd4ca18d28ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a66ac314c74540f177227498d8d5574694a4e0e436709ea5f85d2e59c6011155
Date: Tue, 17 May 2022 10:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652784779
