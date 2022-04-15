Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1935F33D6
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 19:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650051958;
	h=To:Subject:From:Message-Id:Date;
	bh=AZ7n7J4/41fQn+1ZYFbkjgax6j7CHpo+rMm+oOpGQ38=;
	b=lYXqM2Pw1vW9e2VgUH1E8L2PEZ0+H5xvDO2HKFrdSIa30E0fwhac29MUkuifBy6c
	rb1DHy9tpU3ZHw6Jtz/bSaWpmg+bgNK3SZqUQNn5H7HUe+dcbWi5rE6mxDY3//X5T3h
	10DG4c0ke6TFFdRWMjUUERqVgOO85jXxFjKhglY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650051958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AZ7n7J4/41fQn+1ZYFbkjgax6j7CHpo+rMm+oOpGQ38=;
	b=a4M3aSNtHxOHCa9aTmusVe+vFFH6MTCioMi8RsyJeOX3Z6n6ZO9avkOMiiEwe2fx
	vH3VsGJlu5zCu75Xc3U98c7CTVa5tYwqmppx3EPQEdib9+dgHX4Lr9UBl22dOpfavjE
	7tUxhCg0mVBadV8Z9mRBrMeauInjJk78/5TKRSFw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ec2c614-762ea7ca-9aa3-4ade-b4b4-d4f984ee7a3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f22f547ab54b9599ddead9b44cc6bedca3ca514697f3e104ce7ef3db5f2160d
Date: Fri, 15 Apr 2022 19:45:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650051958
