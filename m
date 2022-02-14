Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC82A28
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 16:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644855043;
	h=To:Subject:From:Message-Id:Date;
	bh=E93MkYPa433l9FtaUZjEYi8c66NTtLjnJwiuFYMLVP4=;
	b=dwqgdOxMba/BLhG2TRwfcl14Wkho9LVtzquYCMJXVf4bidLKfQfIhJqW/PzDN6Po
	HlfIy2ICgPrzk2C9kZjFzZVRYgL4I6fke6iAjjVTJwgnBN7YJfa75tGxWCkpNLXsova
	90CjYF7TZbE7oEkuzGRhXEmVyyEnYxLr8ljPbPlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644855043;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E93MkYPa433l9FtaUZjEYi8c66NTtLjnJwiuFYMLVP4=;
	b=a5eQtB9CYHfYEZpAIh5O6LksUJ+ajg0G9+ZN0Z1iyvYIlcgd7X0TrSsykjAH8ga+
	/8vl1EByTR36bAcRRnoFEdrMxGhtkeqTku3tHGTuKnfsbHN5N9t8ivjBWAU/RRbOsar
	V/jX7+b76ZkL+k5vvWQKuVn2ZP+K0yR2b5I9f2fo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef90024dd-45af9bfb-390e-4bbb-bfa4-06864725e16a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1141e5f68de35f3d7554b67d2c3a465bafc7a4c987ce5e5ee576cb9875de6b44
Date: Mon, 14 Feb 2022 16:10:43 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644855043
