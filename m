Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F3A7A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658934652;
	h=To:Subject:From:Message-Id:Date;
	bh=zLTx+7aTaDUdFbMR4LhoC61fZt3g/YMAJQQqtitU9Ag=;
	b=KxEq4JZhHbWFVwSo/YUnUinKAtHB8E+Ef49Chc0F186Msy9Zwu9hmWhZysAY8DEM
	KczWUezevPN2RqAMCkQZ1QprLLCRUAcDyWTTPygaPIdf1D/++KJguh9xv0EZvQzP3lN
	BHyTWrN/hDD6Umjso53gojbHKx7H8Clo/7nbT9G8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658934652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zLTx+7aTaDUdFbMR4LhoC61fZt3g/YMAJQQqtitU9Ag=;
	b=E4gqVtIyxKX7Oo+R9LdVUYuvfffu0LmKL88KdrZNL+eZsTkO+C5cuD9/q2fOEC9l
	2Duc9hAYyM5kr3RLLtMjLnLZtaxJvmf3k7SXiGVAkJtKibZ7nnaOZUU+e3segnPP0Kj
	FAcIxXKXeSSs1AuvMKXw77OUD7FQlIpOOtq12VWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824035ee71-34513bdd-603f-4123-8611-26d124b941bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6d887012661d5ae9b529abe2798bbcc21cc20b02cf9b3d1e0ad4a970dd296148
Date: Wed, 27 Jul 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658934652
