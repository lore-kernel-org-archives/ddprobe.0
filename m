Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE3477A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 23:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650238738;
	h=To:Subject:From:Message-Id:Date;
	bh=pMwOFFvfl6qpRXMrhl7YaQdrA/1gw10eBnd7O2fmZPY=;
	b=bHaeMCVmmJB997myCtNLHxd8+edPKlkD+ELcKpI+ILBJv3rSTzNhP5hIoIk8pmdb
	RAJ/AG4BuPpbYtjMsyxKa1pQadujLNrHas030zxW/8DOh9tNiFsgtUaeXIN6xUpNs/x
	U7/PwjmaK8xP3vdgzezWrmmf9SrCMZ+CI0SDUso8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650238738;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pMwOFFvfl6qpRXMrhl7YaQdrA/1gw10eBnd7O2fmZPY=;
	b=b28Nck6pRuCqI3iq7w5jhKx49cIiCEzQwmTQX3gmM6kiFvnEflpslKLe6Mo9pQ4m
	VOs1M8d/mf8TvHTbtApx2Dg4CVo2jQYzHPX4O1c8rPICRiXKnSwNvJ2taU8toGcL4eP
	KJncbMcGwpRR+SNYL5OHnpa0dTU0nXkJ1TZKmmW8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018039e4cf65-ac281443-327c-4de3-8625-d2b40932d57c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 00d2b97dba7377976b8bd05fdc95dc9eb451cfb863a2672226a300423d99ce24
Date: Sun, 17 Apr 2022 23:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650238738
