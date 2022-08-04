Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5832D7F6
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659616252;
	h=To:Subject:From:Message-Id:Date;
	bh=lg44DDZdlAzRTSWZusutjHElvF7STRtUrzIuKuAMWY0=;
	b=W8ExiIpwN6BxTnu7bPXF+dJ2de6DPlbxfqKlPBP8Ysz1sr6TJFKvj/LhEeJ13OvP
	MFaqmnGlvxD7az2lj3pfjMVgrMn3jLOLjXN2mkjei3DPXQl1adRmTW/92G7xLzFoXzc
	Wd2xHiu7U/Gg9Blk8rxVeShAgDRNZR0ZRAB57PLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659616252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lg44DDZdlAzRTSWZusutjHElvF7STRtUrzIuKuAMWY0=;
	b=HRxfYADYPuOHSpJ56BRjT+MO2t8jklJCgOE0Y1acYvdsdiC8MROvqTrRJAoUuakh
	9OIjqaqw+PP0pMbf5uJfwAHZHieCMhAIVMLhQg4o9sam3A08ZfOIiKKUtxcaEiK/Rbz
	QQlh+teo7JqcAwVDmOy0vKhATL45rGl00SKQzVrQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018268d6528e-63928e70-f4c6-4e07-853d-e604519771ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8a22b1f168b6609fe75ac70faef539ce5259dc5a94e9250c707977d7eb927a92
Date: Thu, 4 Aug 2022 12:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659616252
