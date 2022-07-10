Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B33C7A
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 02:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657420012;
	h=To:Subject:From:Message-Id:Date;
	bh=sbvCyb//r+1Un9b9LDAxcSN9p3y/LKLsSy7OoxgyrN8=;
	b=SM/ViGLVdeUUxHRCAbeE8gkDuH5v1fktYBBA24Xemb0JJKLste9KRafKNoyWjYsW
	rUd/zNntwSdwq39ODH9rzduqG4YYDNNAUMc8sV5wJ8tTZq81P6PG+inuGSEqm5pS0YH
	HeCMgNi7v9osk/3qXs0Z5qakQX8+HUzGQKuKH7b4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657420012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sbvCyb//r+1Un9b9LDAxcSN9p3y/LKLsSy7OoxgyrN8=;
	b=KQkJBo/dAJeF0VlfxT3jXpYcsI1xNH+sATxQdHgulyqsGUjkrpeEY77xc+chbRmO
	gJY4k2gCqXe/soepX+SZBpw2hUpWLyo7suzyj2+95wVEtjgeJeWYNtDmLcBkYrjT/xt
	0kUu8r7mNZ2IGV+6VJV6yqgubWWXmW85LL6GfCPc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e5ee5b1f-6fbd872f-4be3-4270-861e-5869811168f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2de717c358f43ed8ebb0b4e81957b8df2e43067750dbce7449665f94cf95f44
Date: Sun, 10 Jul 2022 02:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657420012
