Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CCAE803
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660389052;
	h=To:Subject:From:Message-Id:Date;
	bh=4wIfLwIwVixHRAvMwjSiBbtn/y7AWclUFxPcT3qHbP8=;
	b=DknvWwvL+iR0LD1P9cJtOpXm14A7csHQcLtyc8WPsRSivFuB64YKiWbtDbypWkEj
	jUhsRA3fIO2g2VOq0OrnnYyrpE62hxSoCMshjdYhehI7pTrPDyG7OYzNI0I+T1jAM4D
	pXR7xLWpYyPxSDARseSHWYOmiQiYG5AKy4io+Oq0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660389052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4wIfLwIwVixHRAvMwjSiBbtn/y7AWclUFxPcT3qHbP8=;
	b=EFxsmLOEu+xBGlA8cZck028stxVPO0OYqofS7nYOsfoAD2FDIiS9mDal9pUFBw8H
	1LuBK0ICBOi5IQ9syprJxZxCazdKjqSClHUe/FUxz5Amx+HP0dvzpF5TqBEH/zFLFaA
	YVbGJ1nUNQ7nzUH5SSaqjoBkHfN8gGakHO1NzzEw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296e6507f-117cb846-375d-4e20-ba2f-91af63fc510f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec7103c85bee2f18a3bf60075a4e297114be57649afff38f8b2c6f49c57e6206
Date: Sat, 13 Aug 2022 11:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660389052
