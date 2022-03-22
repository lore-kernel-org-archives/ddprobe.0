Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F26C75
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647955585;
	h=To:Subject:From:Message-Id:Date;
	bh=GTo1NifnUGioqddNqzhMcapDDEgdP/TyGEoCNEzKqjE=;
	b=W8kRFACt2piL6PUiVxiUKcMUZp+JhkljYSAvzpuX6jQSi+D9VvF02HxrIqWpdLsp
	PJUY4Y+iwrGIvTBonKX07ekqTYXNmy6OeIeuKp8z13v4lZCfLrF46qCCjI69Woe9GnC
	/w2ES3yKVq7SSJpMTNI01gbs0fCPkE+C/BWY/Low=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647955585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GTo1NifnUGioqddNqzhMcapDDEgdP/TyGEoCNEzKqjE=;
	b=bXcUcTbWfswPu5Crh6kytuegHRwjjSn44gz/NyH3wivOI07eBREgPqbyJA8UX4u5
	x8qP/GP0LDttNjEiQNQ5dCMOnP46VOfEqDuIdjWiQufcAhuZbfXEtGpt+O/03I+DwGb
	LcfBCfeOL6Rx8sR5Aq+LaXwzntUp4vuFrSliCxqI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb1cea7e2-75a90a17-af41-4403-a97d-8d5d115ec4d3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67bd496e67a486af2f2b81d2130881df00219dc18a945cd6cafe7f1a2e51105b
Date: Tue, 22 Mar 2022 13:26:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647955584
