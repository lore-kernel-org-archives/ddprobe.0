Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A19815AC
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 08:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659256852;
	h=To:Subject:From:Message-Id:Date;
	bh=JTTIWc0o2wd7XkALAKym5C/fbNmsUvnlbENZF7tni1U=;
	b=DxvOV3xLHE39Qx7gt7UMVKClGM1TomUItjXRWWYCqTzGZfPm0Js7oOaEHi+buEmk
	su4lBo4FFJ72JZepHo5X2UpbEuqU4WntBDO1USG+1E4/36dd+uCm0KpD5U2DtcBn+d0
	NYYfEHGijAjSQZnXJuMLG9xlNNwUQGO4uLrbvGKY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659256852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JTTIWc0o2wd7XkALAKym5C/fbNmsUvnlbENZF7tni1U=;
	b=gazeMWWXy2D7ep34BwgQUMJDYydnRLZrs+s5/sqScK3Rp7neMdBzjdwGPgz2CM45
	MDTf2dZRYK/oScW/qL4za/ddwgeW3lbjjvplfkVcuypu5ZoCfDU5yXrRHeuNJxeAAzj
	mihO1inO7JKZVLTCHKDha4LaMiRPGb/TeCIqHwLc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182536a5039-4987145f-497c-4a8a-999b-00c18fbcd530-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9371bbcc43c109017f815417d5685dca5a89969633c66217b53d524a6a531d87
Date: Sun, 31 Jul 2022 08:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659256852
