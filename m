Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1E6E7FE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jun 2022 06:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654239059;
	h=To:Subject:From:Message-Id:Date;
	bh=3XcunxEjZD/TkmNJzGtxiEUzQ3dWCp8HT7k06IEOIwM=;
	b=befoeC2qR5izMmOdWZVRct5f3ODc4ssV6G8GkmuZ44pGf7Ic5zDBgf0Chh8vO8Xk
	XUMlkjxT6Gpqc6wp48fVznZd9JkRwxhakR6inSYXqM0ViuEda7sTd98KL+mHKP/4lQO
	e7SA15vquVl3tYG2iLmqQkqb5ep8+vfuwg/W6q3s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654239059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3XcunxEjZD/TkmNJzGtxiEUzQ3dWCp8HT7k06IEOIwM=;
	b=IdM3ScMnyn2lju5g8p7DYdheXsIJmx3+kxJfBflLUvTzBUPlVZ/9xzCNhcayKeJV
	34gFJao5DydWjLKAPzQEeJdZxLuWmHKaLe3QpUm5MOE1NHh6wvf1paXC7uWg9FEJf+a
	LFr5pOWK1Tuo5BAHVlssyV3oBrVWhbo47f+SsNwE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812854dd3b-967fe230-b96b-46c8-91b8-e03a9b919265-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 505b40fa11ed196bf4472b25e720f1c2ba3051eb20e2ac8625812ce81d605224
Date: Fri, 3 Jun 2022 06:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654239059
