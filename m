Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBABA28
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644908485;
	h=To:Subject:From:Message-Id:Date;
	bh=asPJHZlpkEHNu0J0zdkNYFcuwelM5t3qQRWf6Ru+bgc=;
	b=QIpPdv9V6QeWTvrtREH7nOGKuhVpwc5OnuvccotgSOcDvk1G8XnGB2H+Izr2RMKb
	Opq1TABpL0LtG2cGkjI3QPVaqZHUsyVKu/uVka9VNl/uj8WDimiD7BWHPTlQx7wJNrs
	FZ6s+ds65LgZP/OGkBaEgkmJ9rt8garef1jdKY10=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644908485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=asPJHZlpkEHNu0J0zdkNYFcuwelM5t3qQRWf6Ru+bgc=;
	b=cIF/yqf6D7esg9azjuF3S2bBtDX8cA3Gv/RBlNzpSJdz2oVLSBQ47+UpeMW3ynPi
	ILw+Z8NbVOCFndmTQEbpLQmCrDF6c4tz0QU0/tXo0gw/AQw6KirxzBo/TbhBCgC382M
	sfTfW5MoQviLrhR1yU4EC6aHKZuovHuIJ2wXGrx4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efc2f9897-248a163d-2805-4e6f-90aa-0bcab153e854-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5aa60687b7d65b5f32320238e53670c1e8d548f1d8ac4723fae09dead92da18a
Date: Tue, 15 Feb 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644908484
