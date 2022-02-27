Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F58A2F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645930884;
	h=To:Subject:From:Message-Id:Date;
	bh=Qfjkev9Jduu1zJgb6ZiGGg3j+hkoM1PBQolj7D/yEKM=;
	b=AIzlH3HlPu88/g/iL6nrmtTGktRGuhGV3ieSeak1J6d81b3bxxMtEerHNuNOuFw8
	QwhTU0hLxUX2Ydm003gFY/J4UvnqIu18fpEPG/X7VgXh7lcl7RerY7fpdc4+vwlCM0B
	/NXaT8K4ccB4fffTeqDOhIFQSLpPjjAupIAeeyz4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645930884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qfjkev9Jduu1zJgb6ZiGGg3j+hkoM1PBQolj7D/yEKM=;
	b=Th9vWIpZDYJA3jTvoGnNxdo7HL2Z5lgLn1hybqSgrPbwfuuF5g0wJvES96kYAqUb
	ttOmFUP3kxnH1rO0zgrBxz3SqasDFZWJike5xXDWlIj6hultqO+LlcoMBWT8qwKbGAq
	J10Je29xPLWaxkfjpukBjlrnjweIfI/NB+/pZYp4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f39202e81-ae3e6a45-b864-41f7-a1ec-46f816616e72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0e2c40e9620eef5df08c57ce553bd1bcc26b7475e2cc671bdedb33eedbfe1362
Date: Sun, 27 Feb 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645930884
