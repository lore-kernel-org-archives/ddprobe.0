Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F197475
	for <ddprobe@lists.linux.dev>; Wed, 20 Jul 2022 21:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658351812;
	h=To:Subject:From:Message-Id:Date;
	bh=wVPqyyguiaxx8qg2ZXf+LAMMpqoijhTsGXC+3YFI89U=;
	b=CumIQiuvYy0JovmBiW6YPZZwrjMOSQ5qKsgGqbFxlhqLXPnJPynJGC8rXYzMTtqa
	+EONRaqgiHZjw0Z6VDPkum3cnpRKuJPP0xMv7VZI44NxBKJs63eh3MOCDHnKBsvS2QK
	Z/ZwdR6VmCVjqpGfGzeZHRBcE1C9MicySTdTotFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658351812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wVPqyyguiaxx8qg2ZXf+LAMMpqoijhTsGXC+3YFI89U=;
	b=Cb7vcRTP44im1UTGok08+Xf/+P3C40Hx6GT1AOJlAQh1nLajSIsB0s1lzK/YsSHT
	h3VymWEb0Kz6d3UOy8VYJSirBOKSOPzPkZIApi2WnnMiwe2seXUWdyJpAQFnq+NIOrG
	k1JOZ4w31HTa5dg+emF3ulZaaeXfTG/xHYA2vBjE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101821d787edf-906bc10e-c521-4e8f-8862-25430d2a37b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 18dd0ef3dcf30c3ad37f28630e03bef0e29d53ce7e87b9c6718b803220bae908
Date: Wed, 20 Jul 2022 21:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658351812
