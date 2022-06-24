Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF03F7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656033412;
	h=To:Subject:From:Message-Id:Date;
	bh=uUWsKbMzsUnSIz3NW6zv+8+Q1C/3FNjruzYQXgnXjsY=;
	b=jfYD4PFQkkCivXrRsYvzGBageDtaFb8k57Thcozx3e5Bn4M1Sz6AVnos3SAnwzUh
	RrgYcNdsZ0uDkL6ykusBhZ3podc5TgO7NFMqdYsSbOYZIEKq4754HlrbFDquWUC48My
	11sgVrn5ZKpAWn0mQMkhUFteuzx38vhxLeZQMsYw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656033412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uUWsKbMzsUnSIz3NW6zv+8+Q1C/3FNjruzYQXgnXjsY=;
	b=HYmIwGXlw0UxkvpzdkG1d6pE+vVskp+qfdYxokmZ/UtAKK1Ok0JTTIdRYGVjrt6U
	Oa4omuQx8ZE49jaz/yHCNwjdEgYnE7Qhj3BQ/Mx25lv+1kq6OLcBbqKxpztPbXhMoBz
	MxF+FLnP5zbRxjk+B8iSXmDE4ArYxHXicRXut9z4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181934884ad-ca167514-d7cb-4db2-a95b-33ff2fa041f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: edd8cc85b50c67428e13d16090fe4986a6dece1a4b0874087df0b219e7899c98
Date: Fri, 24 Jun 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656033412
