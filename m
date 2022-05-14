Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CAF4367
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 10:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652524379;
	h=To:Subject:From:Message-Id:Date;
	bh=VaS/zEF3z68LewWvJbU1FJwyTYhqPmDEOFdkPNriSJI=;
	b=PRqqJCmAiCuCYzgTq7ugBJMF6gDK8vLU1w/dsrQ0dp1ASuiKQcXoyFWzaygifzP9
	gN/PPDMf+lqsP2zWJHZ4wc6FoSQkWiOyi753XESXJSmzuLgqBONRMaVfgmh69PhsX4G
	xI9sZEscIL26XiP7tGTqM9EGheXk9FcC9UNsdMvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652524379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VaS/zEF3z68LewWvJbU1FJwyTYhqPmDEOFdkPNriSJI=;
	b=dZCWVQugUhHRf0lUzoCNuYDq2DTMtJqNks6uOoBJBzTtClKep88050LohA4UG3r7
	RuWioD1MeRmHSVCNN0hS9qg1rMWUV782+5/Okq8isKve29nHQOtqjg1vj/piR7mScUf
	ev0Nht1ISDTMb//SaRVgyoIu0ztOJJEB1rgOlOVA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c220ec84-a190e721-2f9b-4e77-bfbc-152c03faadbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f602fca04dd47905ffa3be53fef4c2b44d6892e99c67bc04e8032088280dcbf
Date: Sat, 14 May 2022 10:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652524379
