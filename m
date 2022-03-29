Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D87620FF
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 22:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648593478;
	h=To:Subject:From:Message-Id:Date;
	bh=1mJ/Xz9h3rIuj3Vn6FzXEF6urEo4nYQsH7dKOgTE31s=;
	b=NTl8oGHqAxIRCUjWM1PEutRue+dUqaD708vdCO5RXPepdt19N3kD9gvgMFiSDxKo
	wNX/dw7upRjzJV6VO0QmPA5+7DKSrQtrBKl+XQl9Ag2+VD4+X2JcbknmerwJ79OgWKu
	GsVlMOxzo5eSYBO6XhhxXVl/qt5xcVs1ou5OCxZs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648593478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1mJ/Xz9h3rIuj3Vn6FzXEF6urEo4nYQsH7dKOgTE31s=;
	b=EXqfLZxqBShqEXI4xiPhyJ+it401cwkYUnvbfirZip/9Zt2Pj6h/lGtJA1veEUhv
	Kyunt7iZhyCKJPoI6xXluiv2piBAWrjjYXvLrP9Tz2Gcwg7CwFvUgtiSojXaU0l1T6I
	u/6Q3m168NJdpBZ926bFGAziz0V3Ss70tPVX+1dA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd7d422a3-bfa47f31-f9ae-4713-9c94-67e9c8e21564-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4b7c38735fc731afb88b9d053ad377a4e4ff287012dc30b50561bcf4544240d2
Date: Tue, 29 Mar 2022 22:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648593478
