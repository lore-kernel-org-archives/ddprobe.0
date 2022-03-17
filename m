Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D617A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647499884;
	h=To:Subject:From:Message-Id:Date;
	bh=w3ih5PMWtuz5kO95wVyVO3G8YTgQFDlQT0uvAgIXDIQ=;
	b=XrCVv+XrxKDzrumXa3+ucYZT/AOXuriiKb9HmxAnlQaqOPgFOaEdpCyexwz6Mw2Q
	RUvbMjtRWWR4HMBska3w6rtEf+882KEBB1kcEz2T0TzFbEVlgw2+ZuOWWZIwt5EfWQE
	nY6CamxOG1iOa9vnpobmjwDFJagI9vdsgjxpSw6Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647499884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=w3ih5PMWtuz5kO95wVyVO3G8YTgQFDlQT0uvAgIXDIQ=;
	b=dOWVDvPblz9XSXMQhancF+McX+R+icQpC3X+Y8pX+ro/nEZaZ7LF3M6cQzj3TZuF
	1pPg5jgLXBe5ADRciuwsCwGlg64J5zD9fHKfaNPB7UBFiRVvcnmLd238rRp/O3tS0ky
	Xx8IYZmKVqjooJp1BWRZIKDpI2nPsLAWcIdHlbiA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96a538ec-229ad80b-5e41-4115-a0b1-a5bd28d36934-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c865afb402e67fd7ec1a39d5e2792abf405caf8999998640e51906b988461973
Date: Thu, 17 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647499884
