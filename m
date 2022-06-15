Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250803D99
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 21:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655328839;
	h=To:Subject:From:Message-Id:Date;
	bh=W+VL8eJXWSKnSxwmwYxNKS1d0IAe0SXqdr87n/E2H2c=;
	b=IT1XFrDU1DYIuLKH2H1dNBKGA7vc+NVw/zueL2Vcr/FIZXQU+VLS4H9a4fN0fjkK
	9Oknoha9AI5Fagbss0OOOOb8Be/uPsRjv4951qTvJtCOUlZ9mJbyAn5cYQyaGBZmjrY
	dmEO/fdkgKhtVUEzN9DCUbldyI0adApSYdtd1n+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655328839;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=W+VL8eJXWSKnSxwmwYxNKS1d0IAe0SXqdr87n/E2H2c=;
	b=dK3I3vp/9EvsaN7l8JdD7bGXs5AHoOIT/NHZFbPhBCXDiwFssXN7cJlnCNfczQbD
	FcxAvOtnnowkWqFQ1cxYbmrhO9QRiNBthqbrC6m+acjTGxJfWkwPMGII6bBSdFa39aB
	fc/fl9oso/WpiF2jRbqxgzWKdXNJSX0N9frB6ZwY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816949964d-93dd5b62-266f-420b-8a5b-8f294d3d8824-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1d76f9dd6ca80cfefb810766ba96aad3c189809aacba5bf43a3bfeb38f1968c
Date: Wed, 15 Jun 2022 21:33:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655328839
