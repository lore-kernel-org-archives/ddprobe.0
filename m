Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB4B2F53
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 13:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655472179;
	h=To:Subject:From:Message-Id:Date;
	bh=MH045Aac+ZHW4QbUnc9aL4ZA8XSspYC0CboySI8xXgg=;
	b=LphO2AtlOsGEDUIXRYycYYJlc6lTepSmjVAiVFpSoTth0cVGCzyA2oPa/WN6b7pq
	OwN0NEv51IfNFcAyB18Dvowx+m6EDY8cIAFWvEEO3x59+xJuMasT2zhOHkgA4sBNdGa
	PFrJZTGysrsl49oeZxaV4gH2UsJhyX9MHtVfkB40=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655472179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MH045Aac+ZHW4QbUnc9aL4ZA8XSspYC0CboySI8xXgg=;
	b=jJisKxHOytfikn2hTmS7I+f6J5dg0vW7QyYEN+hMKKDM50NosGXVGIZMtErPnVd6
	kVkIz6Ss2RLI38meS5ezvgWWAeLskcHUDtJpTJF8GZ4cVY3TQ+F57Nl2gUIgi0gh6Ed
	+par7lminZciszUrIkLBlhva3LmNCsc7zeEGpnvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018171d4c85c-fe3c1fe8-2d99-490e-b941-6200527484e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 165102193639fb6e01cb26fb3fa94651383d0760bcff643cee58809b0add98d3
Date: Fri, 17 Jun 2022 13:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655472179
