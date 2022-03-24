Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687F323A7
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 20:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648153438;
	h=To:Subject:From:Message-Id:Date;
	bh=vkEahaBGykaQ6T16j/chzDJiAvjaOf3jpApho4fApq0=;
	b=fXnomudSGWqcZu4vJnR5EbIaWnFhSd0wQMHcqfVY/5II3GLUB7e8W4qR9czeGIv3
	GzJHkgbNv4E5MYgs52eN/h6jSCbcLtjKu3f/wsAifEIytFeajaAENGU5Au7QSI5xM9T
	QigtzS5IyGOX9am6jKwDIl3plUNvJK+Goql9k97M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648153438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vkEahaBGykaQ6T16j/chzDJiAvjaOf3jpApho4fApq0=;
	b=FDWWDExAwx2YEblIsm4qHUbJp4KOd7hJe0wsvBnAdUJ5hkl8WKZ3JRsospau+/Ho
	Xxox4vVjqM0vp/DCEZqbwnNIYe2xtW+GQUCL0d+UCnd8WSfLrfd7AVHBchIAEMTHzv5
	nNzgMppVjRrJQ4rrcPIpW831qrNGJgEu5WBEN4O8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd99a834-2e461cc0-0255-4c94-b9ed-8835413619b0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ef8449618eb2dd5c4af4186d8c079d6a05e07ac9c7b54f04073b73699f83cab7
Date: Thu, 24 Mar 2022 20:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648153438
