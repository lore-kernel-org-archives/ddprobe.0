Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05A0423B6
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 12:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655381159;
	h=To:Subject:From:Message-Id:Date;
	bh=ktDR3lwIcelkcR9/6gr7VKau85j5c/P2VTjnAhKfJ7E=;
	b=V8hGQjKwpLXb5KnFDqz9QupMzketDCYXhYm876GLe9WKmZtGR/msNHhg2qa3W15I
	AhENId+lTe5bPCTNEXzz7nCGJbvRO4UjgWf7IV0rMTtH+dA5r4S7jniWLQqAFyUQbcD
	7u3eZ7At5kvnUN9HIGQXa+85vj7xbaUF4e16mbKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655381159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ktDR3lwIcelkcR9/6gr7VKau85j5c/P2VTjnAhKfJ7E=;
	b=HKUxUUgXmSxIgyOkuNWD2QHY9MrJQGDnf+iB7xPz8hlCWSmtm1FDEr3q3nz3UI+c
	PIj3M5R08gvhkS8e6h2Kh58OXt4oEPzOY+v5aFdFHyP8JRZjXB3Fx92Ojau8Uuxrh7B
	ZIxVDflJm6QfZIllPlJPg2vbRjIroMRxlhEliPiM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c67ed72-7247ef6d-0575-4871-bf49-e3ef56cf3fa2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fecd717b37cab4959f4d36868dca55b0b303fa93fe035418aac9e985fe9e8534
Date: Thu, 16 Jun 2022 12:05:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655381159
