Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304CA1FA1
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 20:53:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648155238;
	h=To:Subject:From:Message-Id:Date;
	bh=Qv4QH8JD6SJN+MZKj4NWz8kNvFTq8L9cSSp6wPPsrjI=;
	b=f6BeEMz/Yp0J53YWHQ7Y2TLgyw4HmXgma9y1RQ4AofqgmVR3JCEEjfKqlnWClk66
	9RbkqOS5jg5SX0bvBhmaE4jykrpG96MiKmzNjwTMznfpA5+g3zEmyEWct+uXFqOI7P+
	12faJ0dipE9nrtRgvkFf+qIrMpdbZuL2aWuCa3oE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648155238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qv4QH8JD6SJN+MZKj4NWz8kNvFTq8L9cSSp6wPPsrjI=;
	b=ErNh63g2LuEw0uhTE99RaStZOtywcV1AhSzsPHT3FAhCplTtg9exl59hrwC9RY7C
	k/GoRWLWHji9QitWSnJQcw/Jqaq7rtFyCMarkDHzwWN4cgMmoNDMbSE/L1+uFTXrNkB
	/MxrLKr6ju01PWYqkxuYp0drjukeD6vT101mc+qA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbdb51f76-3dcd43a1-abf3-4c6f-9cc5-c17b8ab6ab5b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6a2e26e788db2c92d586ae78897eb92fa3141dbb103e012a2ab97d346752b25
Date: Thu, 24 Mar 2022 20:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648155238
