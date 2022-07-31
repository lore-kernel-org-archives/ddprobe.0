Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D60017C4
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 10:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659262852;
	h=To:Subject:From:Message-Id:Date;
	bh=q2XyB0Tg5/PwUcwBp39A53wnx1JclAcHuUeZI3J0lfY=;
	b=IS9t1zsEGBMS848XsdIaRZsA2LUR7nIyAn2bVcCc8Cks16572ocBjlx3uTUpzffL
	alv0bsYhrCSFGXJgBMQu5HgtzB2lHedJ+kYncwg7uJ3u1sOH0ekxnkPsnhVozVSep0I
	9nTXiy6MLiSPtRIaprs0bYaWftDXsNa4M53Nh4I0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659262852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=q2XyB0Tg5/PwUcwBp39A53wnx1JclAcHuUeZI3J0lfY=;
	b=jRwGQkd4+L5UO9JzwKL+SibnLlcPwuCz+ZDpoRqv/d5FoakGr3AsW1zJSKhZCt8w
	gmGanvXPj90PG4j4KBC+1b4KKQeQuTZMD7Y7DeHkBMM2Yk3buteN8Ww6tyiCzpk84b5
	1BfNfJsBnCK3wKui5Qr2K1K87RB2BvRYeOJq7kpc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018253c5dddb-16c7431a-0133-4446-b756-aca547c040ed-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d793ce3db9982781d46d741d9f82c0a399b9a2ab2524c8138ab25c329b240366
Date: Sun, 31 Jul 2022 10:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659262852
