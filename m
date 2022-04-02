Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631E51366
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 09:42:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648892578;
	h=To:Subject:From:Message-Id:Date;
	bh=prO3uDNgQP+ECNLa8SM0crxHmnsdI3FWtIr6YJRXIME=;
	b=Ju6sgV12LykKVRrcRSSNpIubmQYVIo/nO7hZzdW0xjIDV3XURVziskXzUDBE8jpc
	FBldsHkD09p8coH7MJsS7jFjjbDmMQFA4xB+0FdSrTa5QwF+1ZlYOkYen3jVttI4Zx2
	ZVihwxRgin/QXvqKBdfX4AkVjc5/3rWalmMoDPL4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648892578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=prO3uDNgQP+ECNLa8SM0crxHmnsdI3FWtIr6YJRXIME=;
	b=VQIR8Ow8eE6RvNZtjtDfrTmeSulgbCZ7fMKKovxSrambpA+26pedTqAOu98qnlym
	Zz4xzbqqwdoed5MFxkN0HztZU35LVqnxa6q9emVmEt9cjCOlaFAvN41gQh+x4jFWaEt
	1o8aTLGX1uGOrak2u9WCAwj5AfyDnOyWMMb5VKX0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe9a809d8-280e399f-2c7f-4da0-9ee1-62c85dc698ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ff0b79d843afbbb816a99ee78df9610890a3f17ac18e96781a90ac980e37675
Date: Sat, 2 Apr 2022 09:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648892578
