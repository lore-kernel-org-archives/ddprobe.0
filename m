Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7E0C6A
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645622484;
	h=To:Subject:From:Message-Id:Date;
	bh=AlnRV2an3opjRjGV3EA+OmKjhT1rZBdH1OGbWByFEvQ=;
	b=R+1MHHAtxpq1OInKdub2XALYKd2wKJLcVq2621/MI5JzSYbxwPkLI5NtNp8Ee1aQ
	LYCGqV+cod1X1A/Qy8SUXQ3CXI5tRJougjz312y+6UzbQ7tr1tUrMSemlBWjVVITjSK
	tGthvlNIu2sGc4XB2Ydid0jhFrHMOF1ZoSgSvM14=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645622484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AlnRV2an3opjRjGV3EA+OmKjhT1rZBdH1OGbWByFEvQ=;
	b=FRZbZHPmAOrOVC6k/ddnFGnioudO1sTZRixvuq0Qi5J0oyXHBrUcX2RSCtihTQ59
	ig4xwYjlvxhZGq8Wws1ZDmR1BkEM3A/rJgB95iMunyvO+JAHmF1YQePfIenEg8pU1RH
	jn5RhGdQ4ngaZNLXzWYei8RMLh0q21VtTgLTrtFc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f26be5f15-fae12b6a-b6e3-4c5d-8c19-b5eb2d3ff8b9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98f2f1c30aca205d3f729fa540912448aee6f09e7273d5a20a0eb12c379cce97
Date: Wed, 23 Feb 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645622484
