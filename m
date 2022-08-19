Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B2F9182
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660929052;
	h=To:Subject:From:Message-Id:Date;
	bh=Dcxpyk+OWgnSY4JpNFp9EcTeC2adGiKCF7h4DOdWSBo=;
	b=Qf77e0K25eLAgUpruECc6ho9flC8Wp9sWLD9cjDsSyQZd0hT2nWoPQM3HXKbhIP9
	r9BYBi7Z+QWZa6CAmqWfiE97oPW0kLND8IFPQ2fNdDV1PV1f7UiOCz0zj1EHZNs6ubS
	SnKFGGl+FBB8i4AO2SnVI/qtA+bPuvJh73fyd+2o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660929052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Dcxpyk+OWgnSY4JpNFp9EcTeC2adGiKCF7h4DOdWSBo=;
	b=PNUt0rkFjn0uK8Fz6aVWlSZY94Kwuo5MNvJaCKb83fA/uEkVP552XJ/bj91XlYWB
	EpF+HXME+F1J+SYLCdZoXAZuPmfST3iCIEHe3eDVnhKiih7foETjb91QsTEARzSBVC+
	Fg5y7WN+5TJ+B2w03quFFXZB9IkRF2e6kqcu4BTA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b7160fac-eeb9defe-0130-4eee-a47d-11090261dcf9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3f33cc78b156d435be7e42db206d9141866bccf00d5efa27b2030d203b52fb4
Date: Fri, 19 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660929052
