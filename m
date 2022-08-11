Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EF202CA7
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660237852;
	h=To:Subject:From:Message-Id:Date;
	bh=bF2isUs08EZW30MW4OPtr6yFZjHFIuygdpwDWQJOf70=;
	b=Gw4Z9b1xdiIEEyg04HuxejzcXib1TGOnYnDqJMdizwcQWDXGumXc4yEkp9NX4wnT
	7F9s/vrbJRjziqY6BhVBhXQ3IkyGXmTGZtLGtT+wN37ndMfbFdU0vqdjFYsZKQUJPai
	kMurRTce1XRb71+0yBfa36Ip8eqOoh4KiS9Y52RM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660237852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bF2isUs08EZW30MW4OPtr6yFZjHFIuygdpwDWQJOf70=;
	b=KNlAOS1lc9PIkyIDA2cZBBS1O3LGbb63/YWkOJfxlVvuH9ur4BsMtx2GXz6jTZjv
	pBQZj1Pc4hYYZogsE5Ik/JFBC9ofhXMfTRy6DXxbq0ZlLzXKIZPA2S/dG5U1WN2EtXc
	JEtM2L8iA+k80hTbPjnExbtbUxueZtySW/S3yckI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828de32f99-9edb7fe5-2bf6-415d-80d8-11532945e6fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c28690b71e7a754bcfcc62ec36e3c0cf30bf8bd86334a2d38bc41077f3093f3
Date: Thu, 11 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660237852
