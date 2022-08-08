Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423A523BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659946252;
	h=To:Subject:From:Message-Id:Date;
	bh=AUHn6aZlEAtlR4ZNTvDCP3kKKxRzJtZz9j/LSOnUQe0=;
	b=QNQWjAZwdWPZFwWsUJO07pWMbpQLL6hdgFYlPKU/QpsuP9E6JHiwfsoCee5iezng
	zSCkYMHOp5wT7gK4H8Ktu6Alw8oaoHe0tEwOyobrdkjQKPqssa7JMWI+0ST+ySB6lKP
	ShCJV03GPQKw8MtsLYpTDN1dhkjree55l3gWvDfk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659946252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AUHn6aZlEAtlR4ZNTvDCP3kKKxRzJtZz9j/LSOnUQe0=;
	b=D0P28dIWPIcOWuVSen84dObIO4WLlE1foscnAtCb/KfB98CmKe+ieTNQS+POec4/
	cR1ypMwDro0aMmlxrabD7++PLr7h8rjfQHiTE9om0tfRW21jEHiIuD2d/09/x/eLCHk
	u5yD2O5LyIBtAmCgeUrR1aO0fhW9K+QjyZeUmn8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827c81b911-bd9fe4b1-d402-4c44-82d4-d5bef17bbbdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5088c4b91479631dceeca6f3c2f9d7ad5baa67b2eaca6c1f2ecba71ab2416f01
Date: Mon, 8 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659946252
