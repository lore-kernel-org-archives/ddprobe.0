Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D7E1854
	for <ddprobe@lists.linux.dev>; Thu, 21 Jul 2022 06:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658386612;
	h=To:Subject:From:Message-Id:Date;
	bh=WgKogGjyVGq5oWr2XB9+hV1wxrUPXRXs4ozlMRw65pA=;
	b=OKKRk+i3l5DtpWlAYhGh2G4trK6VDyXX7ppbOWp9LlM1IZ8PGy4f2E8zBVLhru2e
	AgZAcwsObFOclIa3EZj/x9o21ElSAsA1aaYNdk8hlQY7PTIcVQB6MHTw7PnribJnFXB
	Nn/wsUXtLCMonoFyUo8VCtXjtTglPb4h/kvuSGzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658386612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WgKogGjyVGq5oWr2XB9+hV1wxrUPXRXs4ozlMRw65pA=;
	b=DZBOG7si/WI/l6Q+WXCsdLZUxGX6IqlBT5aPV0Iys+NS3V2t1ax15pnWA0tHCCGQ
	kResgrFKuI+mU5orI7j98gZO6vYUCO2FnDwb4l5JpEFGjttUxYkcYwWOowEzzpCOWNT
	q8gq0K//gd2J7qLVrTwzsz6cHhxQX3LhqZiM3ch0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821f8b802c-9a2370f3-26ab-430a-b5ef-a6493cb901d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1cffde91c7a737962ecdb4789916d3f1b82f21316278cb3b62fd6095fc1730e
Date: Thu, 21 Jul 2022 06:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658386612
