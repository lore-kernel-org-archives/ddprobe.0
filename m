Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA4752917
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 01:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648259158;
	h=To:Subject:From:Message-Id:Date;
	bh=x/RRbVxF95UhQjeg3WnAM09qFsQYwL1wQ2+Oc7oOcOg=;
	b=ekALAwVzV+MgdLrD4HdBR9F5wfsbdmUvzs0RmhB6Bahr6VZcqEIV8qwuWrvfJnp4
	qXGRI/eQ0yrOpwlzEzgVGDwegKdGydiHrz44YF8vWrfOeL0RM6kF58ijMh+IYWHsBkE
	6l/H7yjpyPane2A9IPwpPA5F6eU9M2g+IgtpZqlo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648259158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x/RRbVxF95UhQjeg3WnAM09qFsQYwL1wQ2+Oc7oOcOg=;
	b=Px8zqEMSx8Q+2NnJCJRv4eSkzqtTF9xlCjwWuOSPP/BnmGiwk+6HXkkHBHHWeKBY
	y70PAUCnRzgrm8QRxyJjEYOVEg0/2C/OvHBuAzqqnSxTi/yw1JD8Iq+YOS216TmAvEL
	AIMVjEVQcvpmyxUcy3CxjfUPEmgGNrKgOHppkuCw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc3e6d139-467f98fb-e997-42e5-a972-bb4fd6b0a380-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b5e3dc1d8c9855ff0597970464a42d26a191df5494657ee598a0a4a0e7025ac2
Date: Sat, 26 Mar 2022 01:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648259158
