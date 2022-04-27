Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6227E
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 03:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651030258;
	h=To:Subject:From:Message-Id:Date;
	bh=Piul5lNcDp2gqVjX/SZYKbaPbZtPgRO4UNLolFi4g/I=;
	b=Cjf106MYgV0bagg8dPN1yTLBM+0CyzmsKOAulgAwwlS3RD6MmlIT+RX3GmOs6QA+
	DYG1J5fKhc73z8040Abx5T7jIucrbXo2oRVsWnK4VBxCjcSjb1rBkK0CBbV7dIDNzG2
	0oTPJOHJAUxh5Ba3e03GUxQ55e3GoRoF2K2wuXJg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651030258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Piul5lNcDp2gqVjX/SZYKbaPbZtPgRO4UNLolFi4g/I=;
	b=L4BMBImXOljHOAIbk+zfLbvn4MAc9cI8S5321agGzMvvgPdDzZZ44bYZUNbYAwST
	F6D9YviCT8cuIlE+7bZvsuq/Bac+imXjtoLlL39EPfajCopdGvCl4/5FTL55x/CPer6
	9uU0iKlV1bgzDFHAQNXuXV6FcrMSy659NLhhpNt8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180691272ba-774bda59-8bb8-4acd-87a4-33ef0ae01650-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea010d873ca9ff95bdbb307090dbb7a14fce750f989cf78bc20d3d9432ade0b9
Date: Wed, 27 Apr 2022 03:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651030258
