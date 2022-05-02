Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1529817C1
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 10:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651486558;
	h=To:Subject:From:Message-Id:Date;
	bh=ROABwK4bKkW+Yf3thFnc+0Wtl0krfCU+ENP6Dn5vS1E=;
	b=fLHhozEqLBZpj4VXQLlaVM5TGhF+SjqSpMUKVmc9aybvSop8YVp/4Q1A8zXok283
	mSfvPHxYhAZTRIvemySlEnvw7e5CZ6NhUhdz5iaDnRvX4ARgY7sq7cV6Kg6TDNbc/v9
	PQEBnafSrzoCu0aq83Jit1Pp4nu5UwVvIa61YtiM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651486558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ROABwK4bKkW+Yf3thFnc+0Wtl0krfCU+ENP6Dn5vS1E=;
	b=F0vEiTAroDg099+2wcnycfVHKfByuyOOqj0efzS2hBTPFXkKXaiJ8qkDcdTyy0m3
	H6qqdNGXZqgtIJnzm1fo76CjnLWGoQ1U7G78eJhxZCFMrAvzmIFqtBDMkrbF2sZehFg
	2U0y6tSGsoJba071IN7bGTJOXWgvdy6iK13ZL0WA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084450832-5212c8c1-9fc2-412f-83a3-3b1c6e7f3bd3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45758e117a855fd127b1b19e75382824c0a6ffd684f717f4986208d9f9b6b7e7
Date: Mon, 2 May 2022 10:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651486558
