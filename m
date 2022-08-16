Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44C522F2E
	for <ddprobe@lists.linux.dev>; Tue, 16 Aug 2022 08:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660637452;
	h=To:Subject:From:Message-Id:Date;
	bh=aeSmG0HT394Alo9k+9YRJOwlEgCamuaATEPdoBJtrec=;
	b=JK2l9dkqlXIFkcNwZDTjOwxahoD8LoS5maunW2ceijvQnTIhclc/4UU3JPvgc+5C
	g13rZR1Nl9CFNOEv5sGFxXyHSvlsC7F7IMRlJ1SYzYeTPJUGTQW0H1scs0WEDEjP73W
	bIjFubxLb4sFfUTjXUHTqP980ZHKtb8Dxass+v7g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660637452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aeSmG0HT394Alo9k+9YRJOwlEgCamuaATEPdoBJtrec=;
	b=EmlOv038ppwbqli6hlxqgaOYOVOwr8KXJtXWyqwlD7TGSt97SrA5oiyI1b3txbt5
	o45xL/T01reiXKZl4h/haIsizYHbJ0h49oQ00OnMYH9XDViA512bpebk0yjbkR4V7A9
	lGAJ3UJCDyrrrbvJCDCmcx+4h6SnKinP3f5cmUDk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a5b4990e-be5047da-5734-49de-9006-5fb1529429a2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8248e0ac72f0f0d6d47bae90a586ba5bc376fe8616835bd2355c0bddd3760f2f
Date: Tue, 16 Aug 2022 08:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660637452
