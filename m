Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89CDE3C15
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659895252;
	h=To:Subject:From:Message-Id:Date;
	bh=UNyccBawjK7QPABJZlnnu11ockpNiqHCGyuRM2V4LJ4=;
	b=lLptxIWGZNxfHD0KzwQz/amLRrDYGDl/gJRJQLxc89qsTsPIQErGj3i3gdt6ZrzR
	pQFO04qLZy2b/0kGwqn4wKw1BfI0PX0NyBzghPNgRKtqvg6OzBfAeM+aZiT4H/uMngX
	mxtFBe6HKnRXC0IF1Hxq1UBe6vwy2aPqAK+nHxbQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659895252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UNyccBawjK7QPABJZlnnu11ockpNiqHCGyuRM2V4LJ4=;
	b=GNQ2YS01rBxfiUmbn9gXmuVwJdsRMXh2h0nd0tly3rbxaf+je0iQNO1zkAnQICR5
	iooArzipHIiQBfA1aKmuIwjx6DY8aUJkO2T3c8Rw0lJJyzbpTVY4HJqOcavFu388r6f
	vj4J+Iw5LjGRHUovRRJJVil2p2xK/w2GcZh7R9Bo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182797786ae-14f5f78f-c231-4b67-b41b-56ce355cea03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9b15f9ed12bb3bf6e9bd4481158a0ff4e147146e7312898b81cdd91c4a8d9e7
Date: Sun, 7 Aug 2022 18:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659895252
