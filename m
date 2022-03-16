Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 765D338C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647436284;
	h=To:Subject:From:Message-Id:Date;
	bh=KQ6aymPkzjP/ajsb+/8pJa7tsNxRJGXtxwLYaEIWqaU=;
	b=C8ohztc63gXIE1YWtAP8pzu8rDQWxZMg4IBsZUPwdvUY3R1S5lLi8Mg3xJ8pa5Lm
	x28GOOjjGGvotzuqGS7utx1UIAj9Z7UZnB8HzKVBxsvpLxUoFoKKsQSyH1FdzICRr7f
	5W1PgdmbQPKi1F4jRxrjkv9qgU2qXqB/zfMDd0/M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647436284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KQ6aymPkzjP/ajsb+/8pJa7tsNxRJGXtxwLYaEIWqaU=;
	b=PKeQ1xuq/ys9mu4oG9Z60Ar6tzRVf4t0VtnTH3GXkTgBaxl9JKkrOYcRkBa5v9c/
	WF24V6dXiYoS2up+BaDMBY3Q2NoV8AFNHIF56OcTlUs34tFGFoSpMXo1nk51U4eDkgq
	dl0AgMMMJwZ0SjS7vS3H0cAm6ouCagjmIGuRDTDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92dac341-63b065fb-ae19-42d2-9377-a8535d44e44a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 532586001be93a3db417d0df966af7433fd62e770842a6a9c476642523845073
Date: Wed, 16 Mar 2022 13:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647436284
