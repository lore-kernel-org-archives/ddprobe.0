Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABC5866A2
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 16:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648054285;
	h=To:Subject:From:Message-Id:Date;
	bh=8UImAfU8/3k4LjAfjJNMdaiubB3RrKzU9t5MzE7NREE=;
	b=JX70vrUIElOAZ21Nb1xjK/qU3P87Qvnk7n9dhV+fRNW+sc8TKQFeDLBdjyzrteJ9
	q0AbvHUcLVTHcyyv8u6BlHiQT8RnFIdBk4Outl8HvkbzEjvIhy/5U4TttH1//rLYebZ
	i0sVQHqg0SqO9cN9wYp5xBuc/m5hQioAvFq9c0YQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648054285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8UImAfU8/3k4LjAfjJNMdaiubB3RrKzU9t5MzE7NREE=;
	b=PEoYBhN8vDRE6GkzprRh24g8tLMtrWPn7GTQjy3Xv+kYHARpUPgs1g6CnwtrQgbY
	4OeO1rR2nABrrz1jziIPZfGsi9/KPPUB1a9UJjxrkQ76d7arPVFurYs2PjbA3h7/j8n
	R2sv7sefcA9UblLl4wZUChxKEwvxV3c6WHFkFfDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb7b0b1ee-b10076db-29d0-47ad-a5f3-8c510a6edb21-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 142d72a5d3bd463233e49f21bb93e9ceac9a2c860dc611a9f3143e6c26c79b9f
Date: Wed, 23 Mar 2022 16:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648054284
