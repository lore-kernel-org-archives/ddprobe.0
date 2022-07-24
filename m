Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B612F51
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 22:46:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658702812;
	h=To:Subject:From:Message-Id:Date;
	bh=hTSUMYz0m3CW4K0Bktqqu92+ZjTc5hKLZ+zTcZzIKfU=;
	b=c4zNN0oCJI3YKAQW2DF/mPHqUnu+7wkbwuozHSBN5JiA5Ki03gxJsymEcYKKG4SB
	Q9LCgu67uFinsncuuoAugzX1mMubcu1o4LDogp950IoAgEQEDqwoS4r7W8lL99PKSRR
	K0RfZ7sUDNX8ognAnnMvXiq+HqXJewW6x+4jrA60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658702812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTSUMYz0m3CW4K0Bktqqu92+ZjTc5hKLZ+zTcZzIKfU=;
	b=L4q65LQR/r1dBFyVk8ZtrZbSZTPiAu+T/jaCsryTROwo2mW0854z7g9e0v1RvzWa
	+v7eNytn1OyjU7Fz3IdG18fUg2IBgQtaySRy7m/a323lHfhmmVOJ3McOyD0kbcX7emj
	L8HgXitHhskGAwjuytLe+fP0ctXaJ9T1aVnqe0gU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018232645488-e605873e-4f39-466a-8787-c69541bc0b22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 70c25d742909377b77f79116ec29bcd48738a25f43b0c9b4e98c98cc21282d11
Date: Sun, 24 Jul 2022 22:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658702812
