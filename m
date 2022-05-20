Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B357A
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 14:26:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653056759;
	h=To:Subject:From:Message-Id:Date;
	bh=+qeNMqqOjETlPVaRSiDxH4FJxrc4Hzrp1FYFISMIr8g=;
	b=kGkH+LzEcDmYZ9UdZ0HZ3zabmVCdd4pkPohXHfrrEkYjSSh3vEVvvxKwGFsa4fk0
	EaeibfDlWm7IEE9Rqxi67KQiq9xlUzb/264oiEwZuQZIjmMmdXdi1LmugnG65sK6LyM
	XTyQrUG7iRRCNdBgeLoWrYAn8nicpyQc9VHsTxlE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653056759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+qeNMqqOjETlPVaRSiDxH4FJxrc4Hzrp1FYFISMIr8g=;
	b=VVuDV2xPBLpUQmLHGMhUaxfxatC1TlMttRmotSKfToMIH15JWKgXzBAILBt0p3BF
	gA7wDZ9OAqC1HYgupbXLBCER+d3AKw2oTIC/DhSCWTbduqraeV3PSWCXuCKVn4lwJCl
	v57oazTffD4iSFBivT9O5GtcqWrGBhxazwjQhKBA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e1dc662c-f1856537-d9d7-47d9-9fe4-74d19b13cf3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a6f7fef74d6cfb846b1fca444cf115294daf2e9e87cdd4d3dbab3a45456e8df8
Date: Fri, 20 May 2022 14:25:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653056759
