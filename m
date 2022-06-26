Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 379052F4A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 18:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656269812;
	h=To:Subject:From:Message-Id:Date;
	bh=h4HY18uTsWQ9NIfKKINzp2OBhQ5kPtEgfZAtdYM+D7c=;
	b=Ln3Tk7z0LLXmhUFkjSuM+qEShO5clPzHr4f1ch4SMu1oE55h1LJFIj8ibob11SR8
	92WdSs5K731lOYS5c8msL3j/cLwwwUJ3KK17JYM5Mdd4KnKyxjGvQpxAV1FBBz15T0v
	kMZhsa6q5/xj9wWwsj5RzQifL0arG2ydZiAwjjGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656269812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h4HY18uTsWQ9NIfKKINzp2OBhQ5kPtEgfZAtdYM+D7c=;
	b=QKLflKgj0lzDhIkMLwDrnaLMLweRwhC3omtQ1p2gsYH7sngdKgmMzTSKDjyPLZqa
	gVJCj1xwhTf/HCUtVciMfr+6E6vxawJbnwjvAWg0ndGWuhvTDSFRfIpIc7UKIxnpOuT
	wxC88hyDfeTimMAB6tGvjRDySnHpyLDUeNNBN9ZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a15fb26f-c2bca347-d8b7-4f1b-a59a-ba9d874cc891-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 321ffe0ba0df7436dbb02d901219f632a22a99622ad4639a78ce78b40ab3aec6
Date: Sun, 26 Jun 2022 18:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656269812
