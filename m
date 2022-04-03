Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3ACD7A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 14:53:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648997638;
	h=To:Subject:From:Message-Id:Date;
	bh=Mezdh2MoPzU1xJQdRdUY1GrPVDlyzE0INxxCuoy+fZo=;
	b=Zqm18giiPprDJ+dkXQDG6Gbi7wtHwZJ2KnuhvljfT7J3xwNCVVRdOF82u0VAip4J
	uyg5CHUpyB53Awvq6oJ4oSjDVv6AidMkLoFXRI8U7qXOxl1qN/yVDqCifD6k2ANUrWt
	MERLzJxQAcMkKJaJvr5M9Ss9caNMD1P/UtBvNb3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648997638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Mezdh2MoPzU1xJQdRdUY1GrPVDlyzE0INxxCuoy+fZo=;
	b=kRJA08R/SLyy/tzVxF09AHExD9M1Uk/8c3EpxOdSKMrWZlHThBvrus16JvWvEq5B
	5uqLs6DLepfdnnKQvl1ROhvZCo4+tK7mtcjCxOKuS1YBhzT26EbWZEx/MEAB3lHP9s5
	xrnRN+PoaH96sC+AfjQmtKaFW22nemhU2G84SOsc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fefeb20ab-3811a623-0e15-4dd8-b99e-86ad2945e1fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72b8b6b2ad558e752e57cf0aafcb5d7ad00b1d63363751bfa88de3db798ad3ec
Date: Sun, 3 Apr 2022 14:53:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648997638
