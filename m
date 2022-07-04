Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ABF2415A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 00:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656895612;
	h=To:Subject:From:Message-Id:Date;
	bh=S8DCn0HuOGJNVFJgW5tqlsWl28ElHNi5RSbFP18B5cQ=;
	b=WzQhEkCvKpNZrDEvyRlA85BLJKtfUAjBzsjhK4xlmh3nsw3CY2RqzxAyc2vwW8xw
	2nys676dW9Nt8ZOphrAvdrqvvAKu+y1A4dXRNLqGXWHavQdV/bWTsZNHguEb0vHKEeA
	GG/0oQlP9MEG/js/Cjm4/0fH9SgSnVfUb3Mkvd5o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656895612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=S8DCn0HuOGJNVFJgW5tqlsWl28ElHNi5RSbFP18B5cQ=;
	b=MHG+aINoHxjuWJ9oHcIrFQmhyUuEdalhSLT3FTNRWrJBxxzWuaY4J8O4LusKXkL9
	kHYa+VuKQt//1m2fehMskf6U4bdKcxO8OkAlG+x7BhKzX1C/1qX3m2q/wytmf/Vh3kt
	FRwxEvbMGjujVlb2ncXG1bFj9worJH6ePos0PSwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c6aca566-6e2ca94b-9a07-4e8d-9c6c-ec8c33aa91f8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cd480ed8ecff45c4f359d0ebd6ac8e46bf19c9b2e246a129b350d1d11b4d256
Date: Mon, 4 Jul 2022 00:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656895612
