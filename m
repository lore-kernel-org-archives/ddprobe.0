Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F73E2104
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 19:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646247984;
	h=To:Subject:From:Message-Id:Date;
	bh=0Jrrj1J0x3NMXPW41BLEZ+54It1uX3KOf/+lMcVOoLw=;
	b=d3j9Ui0b9WVnJUmzEqjFn2+S45KNRQ/ZQgDDF3LVWV/C2909oz5ppp9pQzcYxIjg
	vyRLmxEiP75mrqdHjuPPvqX54nxj1kSreGgTsCm5QYLAn9lHpaWvr2PZW+nazNPoDlq
	ViIHOnr9A4VcQ0/ovQpZ71MpKFVjylndSvncR5RI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646247984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0Jrrj1J0x3NMXPW41BLEZ+54It1uX3KOf/+lMcVOoLw=;
	b=BBF+ex+zYCZTVGv0MU74r4LcFEhU2TT305Ty/oc/LdNs4mtKJZRStEysr2HJrSI/
	TEV2iJ0rZAdrw5BXoELJ8p0PdmgTQ6O8qsaPtrGI9wJGFM4nHVcufiszV8m1OCC1IT7
	oJoHS2HOjGEK5/Yu/Ru033zTr/KKQTFddE62LxAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4c06be53-77646497-c795-4e4c-8870-7c5c6d338ff0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a1ca56bed65c4242d4e0dd0f164477895e272890b9a58bcea57235afbd0c413d
Date: Wed, 2 Mar 2022 19:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646247984
