Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A52336C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 07:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648626058;
	h=To:Subject:From:Message-Id:Date;
	bh=+lDd1v0gsymAuAH/n7gI6cAAF947uUIfAGc0x9Qj2jY=;
	b=fUm2qK8K34W4dOfiywgryCTm+PoM/dy74zzZYYo6YzfTqXigjQZIyodKpaw5W810
	0f1hfu0IG5kqzEqCfvqr7QX05d+eYrheeSWfr4/ChKq8id5nySBYZCso9zOedjYfix2
	53mfwtbH3+liumUSyJRe0D0nKG6NE3qrtfElbX5Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648626058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+lDd1v0gsymAuAH/n7gI6cAAF947uUIfAGc0x9Qj2jY=;
	b=Y8H8Xw2n+UnuIJs1t6UGkvk5lBhJpv7/eZliVEcL+6uU5h9k7FnL9RwD8T+gp0UF
	AluT2i7I2mb0W+Y8PUoZrXUJoA3N709qkyr+LIVbLHmw9uzdMl7xftFuyeKDlHJNrgF
	lqvIW8xWpY+LItqinUxZdfT1WgVvI5NzbmwhAKK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd9c54404-bf4856e8-13b6-48e3-b8a9-2124519de6a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f2af2705e0c7cd1359c1f3c4b376325cf1d6584c7998cff4e518b9c6edb7434
Date: Wed, 30 Mar 2022 07:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648626058
