Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB74317F3
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 04:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647664284;
	h=To:Subject:From:Message-Id:Date;
	bh=GtM1EbnKnnXSOhbZXTa5BqopccXKXlfas9bI54/f3bs=;
	b=ZZ7FYDKDOg+YZQHz1vo9TdqwPAng81zQbnzHEixnUzz/GOLfbbxNwCdaTeHHeFfJ
	3t7bof1Ei63bB7pNcxb4ocSJNRh+vZF7/oGutbfldUxsS3xG7oYmNbRAth7jxxgUpL7
	vy4cS0ZocKArV/26gAfxlgAOQblpXWsCubg5CT4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647664284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GtM1EbnKnnXSOhbZXTa5BqopccXKXlfas9bI54/f3bs=;
	b=MMwweEW5ks4RXcA67Db4DmNkIilxwQsfeQ7oyL8AjNjx+tAycysUfKvQx75E8a0H
	g8sLX0mz1kzTADXv4+zUFNnU5YwIywSRsJ/FEpaUaPnA4PdxmJJola9Mx9DErprU7lC
	CcN822PxAijxFWf9iixmj7X9sAvU32xwls7NOoA8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa071c472-8b7fd961-01e2-45d7-b96c-7155cd6ef3b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27c2c8293556eaf18c2a5c7a95a651b151cec3e43aa1fc3705f88aebfa39c1a0
Date: Sat, 19 Mar 2022 04:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647664284
