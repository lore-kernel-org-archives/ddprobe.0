Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C4D7E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 14:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652968859;
	h=To:Subject:From:Message-Id:Date;
	bh=YjJh6uVvDYt03h/togHqdjw49pBhA1W9GRB2Q8q/ous=;
	b=iL67y9ohkSNR9ldJLRu/Kkba7WmqHY43r5vJXA8t0FwVc0eR1PRATYvsivdZhPl4
	8PjTWZCK10OQHGtP593HeuP9C+aehI1KJeMcG9yBRwZ/VnPEwlQIHA4c1uXbpAR84Ea
	3CCts6pQvgzYAZAemQEtGirVcydIywdfxxjqrjoM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652968859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YjJh6uVvDYt03h/togHqdjw49pBhA1W9GRB2Q8q/ous=;
	b=AVJGK8mUBtiCjrfW4D6PZlFFclMSfvOuMQHHtH/c48O5fSrGwlP/q+PNZO1fYIge
	KITRRGjdsgeRqrUvCSuF6z86eJDb58n5C1cA5fdShWUXxBhrkvUtugI4D0urBM0zgrr
	xcJoTYfX0oxqGW4nZBAH7COcBa1roUrgMSmTRGwU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc9f2724-eb74375c-ac8d-4027-be02-4da3c66ebadc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 50d2fe87ba207afe6e2e296c1c3a05beec1c4898db0525c3b3500f2553616b39
Date: Thu, 19 May 2022 14:00:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652968859
