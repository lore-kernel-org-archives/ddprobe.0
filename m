Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14A3E20E1
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 19:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655493539;
	h=To:Subject:From:Message-Id:Date;
	bh=bFnhEarqz8opogEoJtt9mfA/itVYZ/JfBZ7psjok6ho=;
	b=ivEZcV066u4FqVai0cxZvipd4q4HUCHZa+HbEBq6YseSi/9w5FhpG6yJVKz8mp1/
	ptbdg0uxacRK5g0BFiotbqMkSSxNpA20wKJYS+HuQEnKIlhYaEdNpnW7rXKC2nZJWzA
	p5U3S9mCpwZCewhOx6uDjh1RVn4Qfo6pl5XjV/YI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655493539;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bFnhEarqz8opogEoJtt9mfA/itVYZ/JfBZ7psjok6ho=;
	b=PGIvLCTBgGDEG7edrJzB8Cm+UBxrCGfvj1pL7AEQ7obVIGbuojNWJ+iOZAYVOYXN
	XEa33pcmAKRpXy7Do1XwsdChkiNhVzLM5lo1VvxwYpkJr0t55S7xhhUl2VnaWu/mBHT
	7cbUqRHfc7jFRHxWO0bdQE8MPRLCPclbrELskIUE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181731ab5a5-df216304-96ed-4214-8593-75e1917296a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1223f2069e4ab614f1e6e9c7865c455926563e6cbd42202858c424fd19f8a483
Date: Fri, 17 Jun 2022 19:18:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655493539
