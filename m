Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C5AA1860
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656710212;
	h=To:Subject:From:Message-Id:Date;
	bh=YrMYxIqVt8aZXEYMy5etSj00C1hXV2pV83JUNNBwINg=;
	b=hIxodwBp23WmqiHviWy67lnFoNIfy+o6mn/8SSnHpcBk4Blsbv5oOgwpJX7J9YeF
	AbyG8CBVITs2ZEy8hB6F2LLOR2FPsbZMviyLl4HUgFy/ySj+VcXlcjhuRFzsKPRRbvl
	qxZswmRbz2NGKnHNp7ecQbayT2bqsVKXH+rYDXnU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656710212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YrMYxIqVt8aZXEYMy5etSj00C1hXV2pV83JUNNBwINg=;
	b=SDvQ6kTPMvOr0niBUCGIAOfbNv0jlVjETNTKj70UzEyaL4+BjIenHt2oiG2lsBcu
	glp6eRrLYPYKcQ1yq0B4A9druIgTNv6+kkKVw2gQCORKLh4qNcAQUkZo/bHbuUzFrAx
	BKt3gLClD/aNzoBjeO0STUXPcRHnJYVvxXnkZC0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bb9faaec-fdf8554d-9285-4fcb-9c09-cbd1eabea2ef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 525a852f4a641ef341a3ab098ad7fb43fbc71cae7d6e03eaefb1b3ef436320ae
Date: Fri, 1 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656710212
