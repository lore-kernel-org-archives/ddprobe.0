Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A4E81843
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 22:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655935379;
	h=To:Subject:From:Message-Id:Date;
	bh=atGJdrU5VwlPbUMvSwmts05dJ7Nzb1qJNAP2DPuS4IU=;
	b=hVbDjhDhYQLKWkXBjKOyt/+IlhTwzw9g3Uq5ZGVrgxdE4j4vYwYE4Tc3ZLIaLSqi
	wYeUAc1XuOVU5DMMwohX0JIVuQYAyjCAhGY9yveLjxtxzgKtMm4m84WHohWhldMLGeH
	WBvvOZf7+NeSJ9Cv5y9ZtNBOhjg0nj9+7SzXVDS8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655935379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=atGJdrU5VwlPbUMvSwmts05dJ7Nzb1qJNAP2DPuS4IU=;
	b=Rr1Q8/6m+K3LMtXQArZYqOTW2ypNHuFVbl+tJZZj01Q2VpgjpcQvNqozxJgpClQU
	pM8CxmjIRWR7nnBSbAYI5NnGs6H9CvgC1HGNgP56CQLJ25cFWiab+hmcQf3QlOtllMM
	WJwgiSq1JFngXyqKuiqcZM/TD1MAo2uQm5KizW0M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818d70a757-8b184fb0-9007-46dc-96cc-ac39b8d4045b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ca93d163e2fd7779251230e977610970cd29a513737ab221ee423390b162534d
Date: Wed, 22 Jun 2022 22:02:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655935379
