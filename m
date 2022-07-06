Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174DA538F
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657129012;
	h=To:Subject:From:Message-Id:Date;
	bh=ZnI8mHmRYqLnBRQuBhV5S3aWjIlV2ul9Zv6fO1u7QmI=;
	b=GRNhYYih4z6SSrE1gl4YenMeu1g5ZnCh7+nS1SbhKbcPKwSegejlhiZPcn6LaiEt
	Eu66oxU4tDQb8wXRVNQnPSWPQMD3ceV753aolT6cZiYaT57h21LRy7uLRzPS8817iKv
	fBxlPfOHny6AGv0AJIaZl0znhOc8q9DxhjmCQSME=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657129012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZnI8mHmRYqLnBRQuBhV5S3aWjIlV2ul9Zv6fO1u7QmI=;
	b=WGa6ZDYkzTRrykMhQtCAG7g7hAN2t8U/gWGCZdJla9r1RZvOoUL5dRRMzhs58fcg
	4KkOufYjUwaB4vz/7eQAu5nfJDKEprFaGCo4KsqjZzSEkc6B3U71Z4y7OPYSETXxg8j
	jRHiJOFVieZIiRMpp3i2XIDhxwaxt/Dm1F0fEnxE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d4960c4c-9b6ec89b-c650-482a-ae08-3507d9611100-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 890a1887275caa4fa6e600ec49a4c98ce81e38ade327c781757fbcbd7770ca6c
Date: Wed, 6 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657129012
