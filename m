Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0E81C36
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 14:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656685612;
	h=To:Subject:From:Message-Id:Date;
	bh=/OFq0oFsoVcZodloGsQSd6fFAqNVNtyZhz467j1T4ZA=;
	b=DFINySpFHhb1V7c47v9rmtjIHs/MTcDwDa4r/bAcuBM/w+A5ruGGDZT2xIGynCZv
	9UuGoTaYC4qkSLZ1jhxgWvp6N9t90ztw69ueoUpxGQsNJtNhgu9saB+HMpsyBWaMWA/
	b4mtfl1f6xGHC+zXpdbBNt983vhLVIgBH0ls33dM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656685612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/OFq0oFsoVcZodloGsQSd6fFAqNVNtyZhz467j1T4ZA=;
	b=GKSroh2qAASjnznUxlbBxeZ+UZ7RPhOoIostISynsq1hBVd6oSUx6jw/FFTc0sxH
	uN2izzSHDTwrRiU8scHif2uTimmDBlO05YRzeMtgjo9iEfinH8H2DoYkXsgfILZGtqm
	Ev48+2/1OgAqV3HtJuUadPwlmFr50C8Al5KEKWPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba284d3e-9ddd680d-0a6c-419c-a922-db8e0d0a17c9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed015c98bf4a724c3b83dc2699147f2cc86977986b692b75494f363607f9cc0e
Date: Fri, 1 Jul 2022 14:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656685612
