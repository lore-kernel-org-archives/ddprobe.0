Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FF120EE
	for <ddprobe@lists.linux.dev>; Sat, 20 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660986052;
	h=To:Subject:From:Message-Id:Date;
	bh=zQxq8aORBk9PG0DpODlphLp450aiWzHtYwFp8e5iiLM=;
	b=kXfpxBNIdoBlE9e3KPRApweSecIjkwpv6vIkxjJ1FaiIqBoaMmBsAskyIlRVTeju
	colZGUGpQCrfjETBIahwjCh8LKD9DyrBrXDIqzdZbF1K1z84UhTYvAkMRrAykoRbZM9
	OyAfwQrbTKSfd7WLQSWwiG/mYbXcNrWrGDzGRYjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660986052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zQxq8aORBk9PG0DpODlphLp450aiWzHtYwFp8e5iiLM=;
	b=RVY8ZwMJly4PuWnjmulMZKBDbmCWDo9ZjcPjdBcij4T/8pbcD/v69CeucVp7AcqA
	f9E63ZZq6MKYFZBCWEpF6IjpgxZXQ/5pdTVUTHczJ2NjM1XrKIxnC93cEZNmxcyx7os
	tSwHsrXlDYkAhPnb8z5d5e9mYMfd1B/nWjTnwS0U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182ba7bcffc-43f7df4a-1ba2-4f67-afdf-da8b7bf7ed42-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ec636e9130fd9618616de048315cfaf964c6b164e4cf54de71d50ab4a2ae0b1
Date: Sat, 20 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.20-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660986052
