Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FA0B7E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 23:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648335898;
	h=To:Subject:From:Message-Id:Date;
	bh=MNdxhGgc+pkmuXVLw9Sth6KIgFp2Qdai7TyDovSBqAU=;
	b=KtYKWdBf5k2qhItUHa6GnTmj/K6Df+sTVD95dLGuOAbs+GBkBdEMZ9kNF8C8SCW5
	etRMVgO0fDZHZytVF5MsuwNgKOexez6bLXzfqfekV+ZCZIqktT8yR42bKDOovlr9EmL
	vnfPXFRMw5py6dzju86U8MOxX0nFP7PnT+GPriME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648335898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MNdxhGgc+pkmuXVLw9Sth6KIgFp2Qdai7TyDovSBqAU=;
	b=RDd5+VbQ67IiOOLYuPXb1JZUpR4/D43UESKteB7RXOXMdeM7czaJdTl5bWdIkhIr
	rDLwmS6hkYT10sBVgAOVHnIf/MgloyaEMb0tzlXFcZd7zzsLGAqk/o5/N3B2czwk/Ym
	WKgpiK2tM1yMOpUC4usy2hVlm0fPqHmpgWJOLp/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc879c6dd-abf02657-5aff-4585-9ac7-4b146f8dd1fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4cfe387287e21767e87853f71bd220fffac2991565a13032948dd65a9e0defd2
Date: Sat, 26 Mar 2022 23:04:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648335898
