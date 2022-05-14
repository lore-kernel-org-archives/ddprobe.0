Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0863836A
	for <ddprobe@lists.linux.dev>; Sat, 14 May 2022 05:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652507279;
	h=To:Subject:From:Message-Id:Date;
	bh=BYWZ4HlZ1BfOMxvLJsoQzCjvh54Nmedhki6c3U4I6Gs=;
	b=bL4+F6XWgFk7Jlw1IG6oWgBOyKwpujLWGtEwu8iWQRx/J3uakGSTQmNIfyV4e0yc
	b6D2wC6qJVve2EhHjKfL6RXnVQQKq7sLZBpK5zVSuI3F8cZ1ZgtxunrIHBIGe2fMRAO
	5f+lmurK7HRhYOFVW4VOv/u340B6seUWTmC4QH60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652507279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BYWZ4HlZ1BfOMxvLJsoQzCjvh54Nmedhki6c3U4I6Gs=;
	b=JDUSnObZ0qqC2f0SyxJc5wHiUY10KkVhlOV/suYW7OaE9A4oSquHijxHG5bzo7eK
	zF2RX864PWGprke569+bLqbwJpIq79qkVYNS49Wp5PQD4yxYlc3Sp+DGfkdrMHeFmnK
	b4V7l9NpcyyFsoOVUDaam1lHbO6VEmL5kfCo0WhI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c11bff93-54580028-1362-42da-9c7c-eb04830dd975-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 200ff74da7dad57cb2c2a47d0e0d873ca5a0a6ced0e246071df8f4fe65559826
Date: Sat, 14 May 2022 05:47:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652507279
