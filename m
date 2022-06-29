Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2AE29A9
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 14:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656513412;
	h=To:Subject:From:Message-Id:Date;
	bh=uLL3+usmDUDF3vrIkxl9+ILHlvtyOGn92+LcEJfJECg=;
	b=VgwZPRdWb3djycPNZwyHcXWwyyXneGPKS/SubfmWipV206POhlgy6nxRv0rrXsQ7
	WEqu71LIdGuX6PwRffJdjvUdqysyNdNU1IY2PhvkhCdxEYpVrOaPORk/OWavPWNDKnL
	ykJ+r3RtUtnAx8rynksxxcDyWzN0mF2XdOEtCUvc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656513412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uLL3+usmDUDF3vrIkxl9+ILHlvtyOGn92+LcEJfJECg=;
	b=LMFEJOyztMNfWsl69WydlQgTcOk/sCQYuriU1COUtQ0ILJDQiGbrm9a1OYSw0Tny
	ZnHYUsc3WBD/rz/vyzpCj6vdK1myUm4Lw3JVz9aRjsDJji8UyZoaAUu0pcz6Yff0XKS
	Njq3krxjwfQU+zXwB2cqjhDZdvZozCe7lXsYjUJo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181afe4bcd0-08a056de-19cb-456d-bd67-c4153aaf88b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2d2e3e2969e9224e9e3e2d4ac8f06614158394398f195832963fa550af5d3e19
Date: Wed, 29 Jun 2022 14:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656513412
