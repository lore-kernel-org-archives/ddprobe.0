Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632787F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659379252;
	h=To:Subject:From:Message-Id:Date;
	bh=8UCHO2j5ifoomX/pdgCmHt7/kVqAFD651MIUTnJHGO8=;
	b=VLiPT/KR6CVElMFn0fxt68SpEiFa3bep3He4jBSAz7p5WMPuZLtY+Ov6wkyD7DXr
	GNxXZCbZ/GWLxsPqdzxb+MQZuCojKXd2YTuwdZvvR2YpUkRAILH45Y0TdlTiYFOZR2j
	P4ESRuoUatt1x2Y98hgDaByUQf96YTz3Q9l3pP24=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659379252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8UCHO2j5ifoomX/pdgCmHt7/kVqAFD651MIUTnJHGO8=;
	b=S7EpbVQM9TEH736AhP5HKOmFxOoOTBaxoAsK2Uo6VIVFMpAsZAgfRQC1iu0kUL/v
	MRvraAlNIb5FjjNM3mNg4QxLhUM8mwkwVDerWKhPZcYHbUfpjVl60tYvx6rTo5rbUnc
	POD+47/w4FeGofvDWWfEbtH5hxQsoWNJFNIYyrow=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825ab5fd8a-41953c4d-5c1c-4b0a-bed5-fd9836832c61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28c91c483c1e56a1038239880ccd2ded779f80f803903fd48eec3d9c471e85cb
Date: Mon, 1 Aug 2022 18:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659379252
