Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772AC4C60
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 17:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648487278;
	h=To:Subject:From:Message-Id:Date;
	bh=UC5vjO0O7FTG0YU63uI/dU+O6BSkUmBbcCjXcHyl1QI=;
	b=LWNPrnDufmFvYkOoQzK5nC/I0Rma3Prlpfqk4OAJTRefdu1WB83W2ZECaflrq6s3
	D6MRgLRk5xWr2jgAkS9WRwKoW7j7OvpppKuKFrNMAQ6wgndYwGFHf6MZ32qxeZOtX/n
	yr5jkHQjLgfPcu55aXcisfx2I5dABoCiYJa5lJ28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648487278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UC5vjO0O7FTG0YU63uI/dU+O6BSkUmBbcCjXcHyl1QI=;
	b=iLM/WCy4ybVWuRUdSA26+LOBh6E9o+Q7Sr3crWCnhFkhXkkqRsHY9Z8Zw9cjcGlq
	dQ5+zNEpYGrWV3koF2GaxEhxavHG84pyIlr4sYvCPdAwtrPwTOR7Xa+rdX/LqN/kK+B
	bYoUaVVw0b7Nvp2DsYOuZb/cL9jDWubEMG4sLJRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd17fa731-b436a661-fc6b-4db7-83d8-338c15259392-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aaf491b72d1b6ba7e84f1958ce0f96d618d373c8bdfc973a88600c3a663edb41
Date: Mon, 28 Mar 2022 17:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648487278
