Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 832367B
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 05:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660799452;
	h=To:Subject:From:Message-Id:Date;
	bh=XcW8QMoJAaXWXCQ41dG641kMuICZzRLlu/sDOAV9F/U=;
	b=abtbCs6c56Shoj7AF2pIscbqbUMEaR7vzyVs20baG0Bq3KsdKLuyDjSjb3W6vzBV
	YVnpBlItjU053rFZh2dj2OXVILItpVPxb9mDdiIWhM7gVxSFpO6+VuiHqKfoArc3qu3
	TBYUUqKPxc8ETdNu7Qd5pdj5Mm8VuFO8ASz/xkOs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660799452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XcW8QMoJAaXWXCQ41dG641kMuICZzRLlu/sDOAV9F/U=;
	b=h1pGzuuF5XWDSqUmBA4hIhuEWl4gGFFQqvuLndXBYDLIXCzjTZNBhPqeRQPyhcgq
	cfZULd8mDNaIDWBR131PBzGE/hjoDwC+yiFfNDoLuFNrxxZ+jT/ck6fR8D7dCMdpkkn
	pm191byuGpxg+RA8oO6/xZHf1sMBV8hr+hpdCPuY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182af5c8606-ae19df0e-ea9d-464f-b7ad-333f8b6ea68c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0f2ccf4fc3b60544e48c6be639dde6d22a227efee898c6480ccbc76621565494
Date: Thu, 18 Aug 2022 05:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660799452
