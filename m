Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 104DD1FDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 04:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656043612;
	h=To:Subject:From:Message-Id:Date;
	bh=CtkB3/Xqi2zFoq01DcuvvqD3A6RM7h/hw74bHXYbqmw=;
	b=ORyhrf2t+cXEfQchSxOU3BXvyJDgtg0AtUYTIe5GDG0wTHB/QeCcpEmjyK4KqDrH
	+uMdUtQMI/f+O87MVFT5Q5Kw5kz+jDmJ8gw9akUm+LwOM7mCzJXIWie49s2mu3NerjK
	KgcG+Xbwqdc1PXlDQKZXjooIOS6dUvPtWEq9f65k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656043612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CtkB3/Xqi2zFoq01DcuvvqD3A6RM7h/hw74bHXYbqmw=;
	b=aCtfVu+Ao1+yXscpMktRPsKXw66aYwahCegiDB2ubMBn5luhkC0Unk/tqjAFdQyT
	CA4D9IEGL4G2KWTWLkHIALOJY+vpOMYYAOlLSfNiY8XUDzFl6W3cjNqNJ9/vz4xrp39
	NRewmCeDrDoAODx28V5F5wRs5BYz8W2+ZPrPiUjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018193e4285f-1c0d9a8f-41fd-4477-abdc-d8be5da9c570-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18e0d61db57551d7879fbf63fd446bbf61dcb1199f27baacbd098e256ef1ce66
Date: Fri, 24 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656043612
