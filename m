Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3444218D
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 08:51:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653123059;
	h=To:Subject:From:Message-Id:Date;
	bh=keIYVLNDcQuNB7j1NNe4Px9pYRqHhzDNWkKOgKE4Rdw=;
	b=fmLqLkEhlJOXCGZwFH14m2BDJ0df2kLL8Dpmo/r8U4v5ZP16Y2vCK6gqdl2uSBwQ
	c77Yf1j2/j17FM1mEA6Un0yov+3n7EmcWMy/8259s0ZaOrNKPZZNewCbniW2oAH0Dlv
	MUcND6uUoIwlBrP6GAhW1jEEgKohNnsYIvS7CrLw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653123059;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=keIYVLNDcQuNB7j1NNe4Px9pYRqHhzDNWkKOgKE4Rdw=;
	b=DIrSEms77qmQadTc+yD7CDRIh7YztWuQ3i33dDLs/dI+wU03BHezLMZ3K08WsKYx
	69ob6VMILXHh2pL1oENQtK5pCayrh7i1AOMkKGW0hj/XknRCmStKnSrKu7YDOGvDxOZ
	kuTcH9JGi3gtYyZ9opFUIxgj/hFf22Am3zBakytY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5d00e13-27b71858-3fa0-4821-9f82-6cd94556c0d6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 13ceafd9a1e7a76f06ece8cd62c912987b877fd307f46bd0dfff7979f8a5b65a
Date: Sat, 21 May 2022 08:50:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653123059
