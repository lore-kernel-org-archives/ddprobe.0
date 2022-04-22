Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62B99290F
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 17:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650647578;
	h=To:Subject:From:Message-Id:Date;
	bh=MJADlFzCyyRGZMzm5LR3FMO7cdsO1oYTm2UiENwUBnI=;
	b=iru3EakJaUOoTSJKrZbaYw/F2izykgx/IMgL/Mmi656ahvRGWc0qUQbvuEf1pawT
	3rPtd/rofN2ovcVp8IYt3g4zTvaX0I8PC0E6IvyS0EwTPOsoT4JVbaLeZeKDNyAJ6jt
	OmMW+Fkz+CysJGFqgp7cX44qQzuVgBNSSpgOfpvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650647578;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MJADlFzCyyRGZMzm5LR3FMO7cdsO1oYTm2UiENwUBnI=;
	b=Gru7XZZKr7jfjF7LcDqJh6flHaLpPA3MrcKZuwMfOwkd3gpyj7EwJuP2ityvUC7L
	pwHCgq2rqFWNFYjo0SpWPSRRqPOazJvUdpjB+zaaS76gGLFiaXKCyeFMOZLSEvuSDnt
	FYnEhYqXmjv+gjZ7yeKv7rWKXQKwVkIOAv+MlKC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805243372f-f54e845f-5562-4168-9332-2b9f5a435c48-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0799ab6c5dd50e5e3815d755c358fb653fa4da1df7bd0bac2f578c8b39aa25cc
Date: Fri, 22 Apr 2022 17:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650647578
