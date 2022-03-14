Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 603247A
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647252084;
	h=To:Subject:From:Message-Id:Date;
	bh=lBxVTjFav2hlbwz+LUHcpUqfbLIdB+axCuxvgFQi3DA=;
	b=Fl285BlxeJJYB+I1jeALVcYIYXMDGbtYFQJa66FkHOvQP544o7k6g1AravGMmMVV
	eQa+iZXBi14CSZEmCyYSr4OjaCzxq1bT2fu2WKYrlREY2SWV9FH0a4eBAFC+v6B0gf9
	exQxya33mfsrPTnLJYm+ZtFxs+bhX5mRfjx98ODI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647252084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lBxVTjFav2hlbwz+LUHcpUqfbLIdB+axCuxvgFQi3DA=;
	b=OIPmC9gkgMjQSZLKWzA9i/6oAqFfUjfMx7Z65Y+kDrYW8zgsHq1thT0xkP7KAFFl
	RO4hn6G6eHMGv93ZzRqbgFtnns/FXeDE9nwvO8LoI/qMD0D173uT+RkA3wbJKu2WKMi
	1JzwYq2tyNHCAeMoQkxucke6cXoBgvGMn0Sq1abY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f87e017f3-46345285-4423-4426-b55c-7dfcf8a78e60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7caa47bd74a6906b7e3a9966e555f88708f587ec743f202c542da43a75365131
Date: Mon, 14 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647252084
