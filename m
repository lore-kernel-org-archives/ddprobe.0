Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D54E4C9D
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 20:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660593652;
	h=To:Subject:From:Message-Id:Date;
	bh=Mt6lC4GX2u+pP3OdzKgwx/TSyLk56oPxoGhdHqy8PzQ=;
	b=VHcr5i46zhn+i6u+XqfMV7Twvbd0J8sJ/jRtZMpfcWFHWkPXF43E1RrV5YiFvsFf
	PHSz31hWytWEuQ4en3f7u7cLVIEY8G9cdE0G70GZd7UfCV/OaWBU4p8AD7yZqJ5tbmT
	3bwzsNES8XwLPw/1sB/edASkR+NmLZ5hyjJJrg4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660593652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mt6lC4GX2u+pP3OdzKgwx/TSyLk56oPxoGhdHqy8PzQ=;
	b=dFFeq8zWM7Yzd2RBQ47NeVKe4pKhNqWmSNcSiyijsk3ebnikwBuKGp7Kxdgx6MYk
	qOG5d9H+Al0/ok23KIPFN6JsqOU/jrcbOdgwaYhQgLzwYNL5eYSXEVJLfeYJCYnZ72I
	r3wb570wfJf7nBB2b5Jsy/f9lMv/2kCp5zZ2ZaUY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a318440b-0e70e57e-95ae-4945-b02d-71bef4254609-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6005e2d1b0a0bc256c3d18fde649f384509405960aa7df3fcb4b713f5ee30d63
Date: Mon, 15 Aug 2022 20:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660593652
