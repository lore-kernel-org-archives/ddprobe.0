Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F414B15A5
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 04:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652244539;
	h=To:Subject:From:Message-Id:Date;
	bh=5v1P8ps2oJ6u1DitCj8xrVJsKlYNOOHI7odFTOnIcEM=;
	b=AlI6SmeBJ9qVw7fw75pIaZd4Tls7J8bTuE9yPaU7xoZDtpra6ruEuV2Q3ZfZIgNV
	+YDbuBW47PzRlu7kH21G6vd080gOkf6W4WWEJhN/yvwXl0NmsuMD2BZCw4+Zb1jy59P
	n6gqO4vlcWOld3caxvjP0tYX5fZ90k8GMSgNNI60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652244539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5v1P8ps2oJ6u1DitCj8xrVJsKlYNOOHI7odFTOnIcEM=;
	b=A3dE2+bbgRrh94JGvexNPWwAoO6ZL053A7yMh7r6rwiOUXlTBKBXZvCzTPh6poNm
	dGcWV8LwK9lD/VqlVj0g9JCoIlhnRiihexdJ9y5VipQW3BmIbptvBCF/OVd5+MuDx6n
	rSUQCMgDHZE5fK3WIw2BmxZ8lGliJh03XKElLAC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b172e7b1-c8dbe956-23a7-4d49-9e32-7b05e876bdd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 66bd31c470b5e74fce325b23e74356ee6c2a7366f35cdf93a2db647254995c79
Date: Wed, 11 May 2022 04:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652244539
