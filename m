Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90A091FD0
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 03:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659930052;
	h=To:Subject:From:Message-Id:Date;
	bh=lkWk9vevrJf66tLsvS7N7vBkwwXZVbWBwIYODFWKl2k=;
	b=dwBVyHlyyg66lMqJVTJBg4sRN+J2SWfIwXxzenqaKGKSp2r5NcpOrBdci2q1tWDs
	Z1+vh7WH7y77lU9IgKK9H0uXyZ+AjRzWTFbiTEKAv/HVn9WQbqFydyDfK5eepVRsQIl
	i6p8AZFXpwjqQZCGVTxOr6Oa//qK+AXxc8Qsx8AE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659930052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lkWk9vevrJf66tLsvS7N7vBkwwXZVbWBwIYODFWKl2k=;
	b=iaCN92aRlRXM3wLiWZXwIvz+NJN53ZlYN02XkIZRO7WwRWqFeOap6ittlqzwdIeM
	y11aBXd+AowvywlKbXDu9bDqq4nRL4ycnZ/nQ9axxG0zXoAK52jf98LMzpE4Jr2sodW
	ZE86W0fRLGJpNC6lJKV4Tnepyla1abyv0awoqXV0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b8a87dd-ed92ff03-ea6a-4ce7-8753-215b15ab36f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23742f993a0e1e3e4a665534cf23cd24f028e28151654bfceb0c3483287c4082
Date: Mon, 8 Aug 2022 03:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659930052
