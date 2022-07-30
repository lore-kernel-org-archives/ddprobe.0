Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59090187F
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659155452;
	h=To:Subject:From:Message-Id:Date;
	bh=tSB0O6z9I3WpB6rrphkdSnAsdMjju90+lVgoj4W1zmA=;
	b=h1lBJhZyS9umGwnmPR/uK4pOKix/ZVNLVPUY/ugVWeWSw0qQZI0pVkalRkPa8qdB
	Cc0g/hrwSTAF7hg7rJObeXZdAM6TuddhNAPYyFufCF+E4vaKxWURR+o5DHbtVPecjHa
	zODt55/yHxDPIt1/Q0OoOxEK+PBxyJB72gMPu48I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659155452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tSB0O6z9I3WpB6rrphkdSnAsdMjju90+lVgoj4W1zmA=;
	b=HWARSm131EWl3edHUgbjZln0OM3nd76Z//1niVCdJrzuoFd38ivkQToBB1jT0KYe
	L+Xc1WLZNotQZqM/u0pCSRbulZr5sag3iGUby+HB3eSND+I4siiArmK8lL7Jtt76z9z
	riH8gVYUlkwz0eOOG/X11jp1hTZ2i0JghbaNcoPQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824d5f1280-04c04cbd-d0da-48f8-bfd4-908878130b7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88873001160b86830dd76237cf974a87860c8515ce2e2f7f4f6016d19d65a579
Date: Sat, 30 Jul 2022 04:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659155452
