Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F017A
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 03:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659065452;
	h=To:Subject:From:Message-Id:Date;
	bh=F8STo1T1TMw74Xt6zdTQ471LcmNdfSdL0H1iB9Bepoo=;
	b=WuCUAJiBAsWZVmbwmUGi+bULq/odb6z3MpJpnPLr5wQuAdxka5unOgrnq1nlj0rq
	W9XxJJLdJpBgMlWUIawDWZ2Zuf1CIAKixW0qp3fUIHpQjngqTwFr/+gVvNBstHZdzBT
	CbpKMBJCZjeo0aLVYZCb2qTvpgAjqinbyZPTcvvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659065452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=F8STo1T1TMw74Xt6zdTQ471LcmNdfSdL0H1iB9Bepoo=;
	b=jZSxs62C91JD+EkvE3HdlmoVCe2STDMr8mxfM1piJgv9NxFImv4zkZWmfoh6TC5w
	9Yl3/+848+yVNlMqKEMVNqds2RmH1HnZs7R/3197Udh+HR/NFAr+pei4pWtWtJzesoW
	gAhSpdHEJWsimWkDqwT/5KJQ+bE/qvHHqF3uaN1E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824801c823-63b4634f-23fa-4990-a588-d78ece08cab0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e44223fbf85bacf186a612f7882084f2be3a8c8b4688286aff6a51b58180bb8f
Date: Fri, 29 Jul 2022 03:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659065452
