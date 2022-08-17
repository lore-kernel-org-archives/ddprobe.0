Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EC103D8C
	for <ddprobe@lists.linux.dev>; Wed, 17 Aug 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660756252;
	h=To:Subject:From:Message-Id:Date;
	bh=HSssrf3zalZ580p2k/tEsEmzaI5ZYII4uyI8SSBZevA=;
	b=adBM75qcaWaq1e50nBME+sAhwi92OsMgzQCwiXi7Rfa547tpSyTPwc3ewxf5q76H
	9jZdrm6gJZtmvtSziUdCsENYM2cV5EN2sLbVG+0ri82FcLqrc9KJ84WAoLfF8GelkOi
	qwVoTe2Fk/V9WMfgtTQNv0kKi2fn7SsAHgeHUvt8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660756252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HSssrf3zalZ580p2k/tEsEmzaI5ZYII4uyI8SSBZevA=;
	b=UvcwgzDYhu8d8TUq2MbFyXzhVQ/iFPTE9/p61aaFhePj8ycuIb2j+QVkxumEfqou
	aWpEmaqcqS4tSn+E42rdPetssPqOCEdqiO9Ttn7uJ5GFB2YlWBwanyPQIs4jWsYi2q4
	5uFxoy3w6DWJ/1/uOH+64m/pPD3X5VZ9kuzaBOeY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182acc957a1-dee38b57-4404-4033-af68-1b51fd44d580-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db3a5bd7c67391a9d46b4da729d0b5899277129eab22449f7d983fa317b669dc
Date: Wed, 17 Aug 2022 17:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.17-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660756252
