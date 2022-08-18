Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75A6D2915
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660815652;
	h=To:Subject:From:Message-Id:Date;
	bh=O26D1hdjZrmwWLKYcJGptgD4esKc+tzUQFrwO94qMsY=;
	b=FzC3H7ogyBT8yB2wRVOja70LnBdwAlATf5R1vDJE1t+6WVSuGUw3+n0d8lpsCkDY
	8xPPJHdJGdbIy5nue8WAjoqZ+S5YiCDXZXXE5oLM6LruLsP49HDscy70H2+y3mZandA
	V/g036FZTdbuHdlI+erntj7I7GOU+SvsUZW0lMOc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660815652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O26D1hdjZrmwWLKYcJGptgD4esKc+tzUQFrwO94qMsY=;
	b=ihGvgKe197iy4JV+iMno/psqL2BYVCbNW1qFtGMeC+nPOFVxFrCppdDa26RBGX1K
	6DGrFI+M6Q/e508VagmTH7z5fzSuvaJ2NceX+UpT4RPn8+/0SV34V/iuhREOuqzj2ry
	SqxRv7KI0iTE79n4Y7mlKM6ltjbF/4JjlBGtJoxI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b053b72b-c6a61b88-d57d-43cc-aebc-e6bb8ec18214-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d855662a224e5284e8444bf0f5327f724ca5cc100df1e6c45e82ee2d39d689dc
Date: Thu, 18 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660815652
