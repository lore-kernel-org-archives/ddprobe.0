Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BECD1376
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 20:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652731439;
	h=To:Subject:From:Message-Id:Date;
	bh=nvJjR1ZyWHUS1M1f38XtlIgh3fA7PE6PiTE8tEY9JT8=;
	b=dbiSqHU000s/6qYBy6JteGiBvvGqCLXXnJtBP/GGWV3FZr3rCa2f2i9v0+jTbmjn
	czsu7WQAul4Wo4GBnuPGFfYni4RTjGuscrkOjcF8PAQJ/pgHJAEg9ekLl2UH7VPnsNX
	5/+9aP5ICW8mYZaXh9RU1ixC6qojShymzngjbIqE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652731439;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nvJjR1ZyWHUS1M1f38XtlIgh3fA7PE6PiTE8tEY9JT8=;
	b=kJJ6cXrxB8vMDxSdVH5PBeG6rAGhr0pQVclWuSN4O7qXzCfBtj58VZKhlZSNn2NR
	ur40gytEZdX8I+1E0/9qjHHSlHMeJXrJw9B3lLM7ZjtQq9u021WjpwNtD6LznQ2jts6
	2AaTpe7TusPTshiR8XTM3R1ycOQ06q0UZKoz+6UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ce78690f-a511903b-6537-4f92-92f1-496723e5290a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7e155460d243f468a40c2ab7b4ed313942e17e50f08ed426fc0ba0d3765a552f
Date: Mon, 16 May 2022 20:03:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652731439
