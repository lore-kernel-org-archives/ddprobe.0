Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1129E7E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 19:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651001518;
	h=To:Subject:From:Message-Id:Date;
	bh=ChWxuX4WUgwlP++u/J2PIyXNQhcZgVcMIbe7014/z4U=;
	b=NgNWUAhRr+jg01qvqq0uV1DahQu2Jy4c1zJ8zDyhoYUm0ro2oqwDc4+Nnq5uN2a6
	9wJmykXK2O7I/iOBJasaDqGGJsnHO/L78J3s7Zeeq3BQtBI7ePgHBfyci51Cva8Cu9W
	EOr2109uXs88DJYlosYwZcOEaKyj5GIwlEKzkEhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651001518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ChWxuX4WUgwlP++u/J2PIyXNQhcZgVcMIbe7014/z4U=;
	b=ea8j7/DsSfNPitIS659EPOJPlhup34CBFlnZkzXFunDg/tmrWe+iQVuu0hbiZ74R
	ACHR0z/GPzY3bXzevPe5buE5w09EUa2T2GaK2nEFjacZJgQ3taFxrT/ha1rAT2RQ1Wx
	24HkzWfp4q4pkgeCqz7XbDkZq2947JDlI6vTLuk0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180675be8fb-9b7ef6fb-1028-48d1-8b88-d6c62ba97d33-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31d8dee29dcfa2255e866f8227a160998117da72a693f1209a540d154e6245a0
Date: Tue, 26 Apr 2022 19:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651001518
