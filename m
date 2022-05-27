Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B223A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 21:38:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653687479;
	h=To:Subject:From:Message-Id:Date;
	bh=RV8rYpG1gqOS/+utsWmZayDZTBbihPO0nEI3/gV/emY=;
	b=SqszQyy5hA0AjM5Odzh/iR9DI+4SOv+hWyRu+XOc5dbUmccM2t8QfAGxyq7q4HXf
	el0RqSny7ieH8UbVU7RdvnJJWMtEqaitDaej3pjOxABRFNbiPDQBRJSCz1iDmq4y89T
	schqHjIQLaDugvx4UQq+ckj6LF8NkAX6EMc4igSM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653687479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RV8rYpG1gqOS/+utsWmZayDZTBbihPO0nEI3/gV/emY=;
	b=JWEQfkoTuMpS0SSWJ58EET8e5gZAvtYASqDyYNrVIMc8xScvI7n69vl0KxD/TAJf
	GfxCvA46a5UNoU/WdcrvPlI5+wsNYV2WEO5oFaCNenFxay6xwXQ7FdxnPsSl7eYf1A5
	jHo0DF7nTHJZUl5Oq3/0V6HttCLuOCkB7KavXGMQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107746c13-9aeac486-9307-4e93-9e26-e07e4bb43904-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 105eef752fa293bd2eec3498a40f3427d9d2bc6425c656ff2885b9dc6c5b8b2b
Date: Fri, 27 May 2022 21:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653687479
