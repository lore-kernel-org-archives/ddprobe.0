Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3265F7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 02:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656382012;
	h=To:Subject:From:Message-Id:Date;
	bh=dtPuOb9tNkXeFMM86XuaA5ys5DVvWG+E4U7mczFQnD4=;
	b=fW1FQzguDFiC7rp6ySem8UJD5oG8HCoUO3HgJzj7MSkqp+3hlnnGXaEbSi/y3S95
	z2aEJtJXKjGyLP6VzTGalp/Gc51PEnLWiRg0VPtUKqy2aN/toPnua74unuRneZdEV/Q
	3+q9jZ6PbOwgjOjIzJI4TJhSMDoHUBAUdazjsfa8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656382012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dtPuOb9tNkXeFMM86XuaA5ys5DVvWG+E4U7mczFQnD4=;
	b=W8Ba6gqIqcrw0kx/0a0/pVSRI6kJLABqYp3L3CfBnQOKjdYWvNR+Hm1+a/wwv1f3
	/9sse8aj+GvSStI0b0uDebqBjLGrMZ+TFq/XzQc1hQvVpPH+GKdPzbMBbg9Fx46f9At
	G6gEwoUKg6qSSr10PC1R+5ZafNho/2Ttc39uAc9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a80fbb8e-9fddbd7c-0a78-4078-8412-ea83b8d6dcbb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e4cea7d9f815c5bb87ec35be29dd8f12410f1e7fe66998ea2ccc78b2138d1ddc
Date: Tue, 28 Jun 2022 02:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656382012
