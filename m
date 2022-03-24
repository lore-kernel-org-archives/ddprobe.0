Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63F8F10ED
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 02:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648089718;
	h=To:Subject:From:Message-Id:Date;
	bh=7t8oZBnWvDwrBA2qj6pWqPL3mHPcSha2VyO+lMZyxwo=;
	b=B20YewNcEeqwLRVYdhmqWtiljUqU9V63R3PZ4bTtdHcltVmclB9KeurIj1BvGk0M
	OqrTrnW3FsgMXTIjMVaUnD0QAlLzT2q76a9DjaOnpnKvHfCmB5IFvKlAKqa5CKklTjB
	DnnZMXYyJvEGHL0RaUvflIGuOKUIe8NN23qE0qQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648089718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7t8oZBnWvDwrBA2qj6pWqPL3mHPcSha2VyO+lMZyxwo=;
	b=Ws7wiC7WgGICCKDHQ8idfi4iEvAPM00av3O2oEVkyDYfvIjeDNyv99g/xiYLe/P1
	/xiIMH2YKt32IkgVrDWruAmRJ9HWtiBpAYygPFGytaKsk+XVpwdDL3bjRwgZ9M8vXC4
	8oR8g4ySJ7LNV+DurLR/JcdYNNfK97u7G/vjgx6E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb9cd5e07-f8afc8b9-4073-4e40-ab9a-8567b9f45e56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a38584561b9761df0480ea558a550bd53b66a129406026dbe8611fc5f43ebea
Date: Thu, 24 Mar 2022 02:41:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648089718
