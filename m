Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 463587E
	for <ddprobe@lists.linux.dev>; Wed, 18 May 2022 17:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652896019;
	h=To:Subject:From:Message-Id:Date;
	bh=AcIChwAknAac/F5ZFlEHHgPmj5c1MJJwhfgJ3TVy2wg=;
	b=jHz+bBl8FJvCcnOpgrWbUEMSVm5KedaRCieDB5OEVNiSUAds/orSuuQyXjeicpv2
	mjyisa4B+5RU3E+NC3e614dRyNDdXLtea6Cd/Rt1pnVZW1CyhzRTypJIFBPlgLoeh5L
	y6/BnZwZJUsp5i9R6Gp50sXQZhSaPsaAG2dR4v8w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652896019;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AcIChwAknAac/F5ZFlEHHgPmj5c1MJJwhfgJ3TVy2wg=;
	b=H9Etl3Kjg9VZpBIQH9BmTiASUe8tbLgpXn+BTz/dOS0EaTxwN0YQedjhZAp8fj+z
	qrHfd7d+VnyUE5gakH5lGV4Rhk1iU7MwElyKzMkbHsCMxALBbALuaAXguYSsN/0azp0
	GVQw6rg//6zcvIGrTBsaTmJD+tRJl0pSXoyzHO1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d847b363-a8bbcc1d-1273-464f-b5c9-fbd880415c64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9c61e0102c78737a5eff9314b037e72a6656b976c6e3116078f8d94a0da8e04
Date: Wed, 18 May 2022 17:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.18-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652896019
