Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840D87E
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 11:01:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648119718;
	h=To:Subject:From:Message-Id:Date;
	bh=ri1WjjrbddO2KQPQicE4qLj9NQ9jCv82LT2lkP12nAM=;
	b=ZUwhIZPShIUWn35gGfqHBK+hw9LK4lR/P5OptJtI85JfCP85ZfeRzzgCxH6hYzvo
	qEy9MX3HA9GjQ0ZUd/1RbEBV0cTsfVSiCJpy0QqZKVaFCHNO0bzQ0JHhFEgryrLko1D
	wkTTX/W24e9QZy01j2L7fGpPZBQbPmJgCtCjTsTc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648119718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ri1WjjrbddO2KQPQicE4qLj9NQ9jCv82LT2lkP12nAM=;
	b=EMJVeQQQ6j1UcGk1SRtluMIJKMDXPXb/cxFK/DES+AyhUOZbm17wig+dZdugmRwo
	v4xQqrmrzaMHgMufyGeGyqcTmxflapQ8Y3ZnNyD+Dl+tV7UytVDcKjuUNgfPxnsFLJb
	spfZkja8ojONe6odld/XuI4KGb55F3wY8LQRmeB0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbb9721bb-059685e2-c581-4808-99f2-5427516d0fdf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b6b2dba4d5621ec08501429e311c5617deb92a84a7724c857dbcae86fdde8b3
Date: Thu, 24 Mar 2022 11:01:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648119718
