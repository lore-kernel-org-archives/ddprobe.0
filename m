Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CD33B41
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647462384;
	h=To:Subject:From:Message-Id:Date;
	bh=ydXh790SmJ6HJE1JtSUE3caznhEETcua8SUpYApTGgA=;
	b=Ehfbgtxta8eb1dcDLXuVbsolv43axlxqYCfgmqf6odrheL4wLWisSMQOeuEl1wDS
	f2pW0XHjwfDrT7sNdhyhTm1pIRNXv/EP2gO/So/fhnbt18HQnuy5+kStMOUQdlp/OHp
	GMLTyZNbPwQKa2s7qRgdERyALjbXEM7dryW6knzQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647462384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ydXh790SmJ6HJE1JtSUE3caznhEETcua8SUpYApTGgA=;
	b=QqakUrUfMDwlYYFwcivU6mK1PU1vJUV3NYQNzlx5HOYKKEp0NqWPDRXzhzd3vRer
	D3NQpjMOmXIkZEN2CQGqCtf5DMQZZkR8JJEth6vFNejGxpbjk8Z/u01xtv+FQCg2KV3
	3NXZeN9rkwtTKQxtvXd7tXfv7bmWdgpFMQSvSQCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94690478-c83dec7d-ea27-4c37-b2cc-0e83b0825e26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10e312827052cfcb32e05ebf9f4cea1e409e57ae53aa98b49f945bb4b6047d60
Date: Wed, 16 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647462384
