Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11AC7A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657276012;
	h=To:Subject:From:Message-Id:Date;
	bh=wMJRKa3YCDVJMUEhwDxyA4fYmWHi8+atrlTMdVjbqyU=;
	b=LgbnVyoCFaJKgBzIw0D0dmnDkPMqjMjX/ExdFqeIss3hCQmzXb14NrVNXl6lp7TN
	30TSSCQ04Ty9ZzmpqeidG7YGkZSR9NDj9MRU6iOEXeIJbzSfWXGy/5G10bO1T6GCG3s
	WmVTKqmkv1inkzwuP9U72ykxZK+0GCF9wPKKoHY4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657276012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wMJRKa3YCDVJMUEhwDxyA4fYmWHi8+atrlTMdVjbqyU=;
	b=VN6dM6NX9EDUmZ3gtxPC8G9vlKIzvTk0+fhc0MPiRWg5ZtqnaeuxSRguwhRDUm94
	Z24Me+HxIr20dv5SWjM9BwhUKwZgC3XuYFom6O6b+MnEd2nqnve9sQ6ktrUFUsiJg7y
	I8ZhUvYobeH7gmQgVGpDApypFiisSIXNxlaA6Efw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dd5916fa-4611fe73-c3de-43f1-bd2f-73a8d33bc340-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eedba8ddcd8ae149ff175f750e4dfc1e723bdfd1ae37989a11bb6024aa6f0791
Date: Fri, 8 Jul 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657276012
