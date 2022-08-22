Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B447621
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661133652;
	h=To:Subject:From:Message-Id:Date;
	bh=MQuMfsChEOPavnn3fbha+ULOcTurJlX7Kc9NLAYQ5Ic=;
	b=YMNtpmA7xYw+SRB+vUARDTZ9LlY2d8oHgok0B7DkkUwUsxqO+qXMFpoATLXDQk/j
	4m6kNKSDuHP1ZQ1t7SlWyGFaMz99+/BnFmusDU7AAN3jrXxO6c9MwyOikYJu7hveSRi
	Q5dILUL/hVMnaIrTWyq2Mmxfu2Em+4IxkC4NW5Dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661133652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MQuMfsChEOPavnn3fbha+ULOcTurJlX7Kc9NLAYQ5Ic=;
	b=XE6lzQlnbxxvdkhwLdqUKgoOJzykJS6gdlJ90Eto+Zhb470FNksDr7xsRrxxL+ho
	OBJZPnYcDx0kxzPnQymJRoyJPL+R3efiguO+tJQeq4qgbbo/qXeM2M2x3h/9x6HyJYT
	pOSkOBN+ALGGrNtFNB35mnMCC2k3CBkhBZ2UX0X8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c348024a-a0ee6ac7-bbf1-4271-acfd-f697ac64c2f7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ee374dafe18df6c090dbe4f36fb3d998e749bf5bffceb0c04275346aec5d76c
Date: Mon, 22 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661133652
