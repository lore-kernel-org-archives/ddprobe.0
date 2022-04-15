Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23CA47B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 02:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649989078;
	h=To:Subject:From:Message-Id:Date;
	bh=EZszYli4ctfPq9bFJs30eQ8tk2Jdt5dELA+LoYd02Jc=;
	b=gNay7BU9EpIcDDB/LHkilgv05FyixkWNt1BJQI9ef/03N9CyPDyQ+MzKJbah81gt
	NhDFMt+Xlazck61sWCn/EmsIadhnZPqhKmjMkaQLOA2LMlLq5j2e+dic6E4qrJKaMb4
	RUK4bVrohHqaJvBWHgIMaCBo9h10MItDqALXz4nM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649989078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EZszYli4ctfPq9bFJs30eQ8tk2Jdt5dELA+LoYd02Jc=;
	b=Nl+kagfX4AcPKCY3yo7+TE65fKsMSJfYvm2NENoP+8qkpBoPWTU5O7z8ypjzLy6s
	7FCVhTna4IiiHM8bgHoq+U4AyhC9RvNC6/NBZ+xdqZ085wgWiQNCPZREP8LRGTOgqMj
	5JuYkvaZBYlZD8AkfJQ8IAAaQXXx9Ifxfuw8wkuk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b034d3a-1c93832d-1c37-4124-90e4-99e3c75722d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15ff336dbc868ac5f978c08cf2d773c8394496246374dafc7f8e59699d94a270
Date: Fri, 15 Apr 2022 02:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649989078
