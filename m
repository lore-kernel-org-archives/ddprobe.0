Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9432A7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659936052;
	h=To:Subject:From:Message-Id:Date;
	bh=3i1rbSGZhwy2gvOj+fTOeoIScC6E37YPpGBIKmN8CZs=;
	b=eIthBT8NpJXdxAQvAr2hShYijXIy6/ln0lV3M+niD6NdQhDki5iQtchJuXZPgmJ6
	Xa1wWkuGVFmZ/C1V8wIEnAx4qvqwKsxPej4nf9neaPsgJTus8L35ToqvtYCiHHq5rnf
	z3yfhHFJBffwe1JvFr2VFysSj9DD3m4A+UPuJrac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659936052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3i1rbSGZhwy2gvOj+fTOeoIScC6E37YPpGBIKmN8CZs=;
	b=jsO/BlAb9EIHnCDUCHci+VzxyjsII0IthfTMjWPhxszwrR4GmmBnr9YypHGpmXTt
	lRCg8uWT+yZEOMRBKtjX/EupCiIt5VPQYHaDdmq4JWIYn/ka+OG6/kPTVWsXkM+Kn+2
	UATI1pQ4YnacSgsEu39+JTbRkM0FH3IIYzmdHDC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827be61555-ede2480e-7906-4363-a1ac-ab60878debdb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd386d244cd4829aa290f6ebe0188f2a44f36dc197bb1f2635a4737cf7555449
Date: Mon, 8 Aug 2022 05:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659936052
