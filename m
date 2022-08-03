Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6322C20E4
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 17:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659547252;
	h=To:Subject:From:Message-Id:Date;
	bh=bFp0Zoxf5aBa6cz+AJ4ZcHKCvG/HzLjiz69sk0ZmQ1A=;
	b=VneIAa47RV30mqSXU/+tjTDOWGarawID8sJnR6WRpZslrWjKEboadkFiPe1wXHuZ
	OVpg+BfOt7z1eXft6tZiaaR8AWh+eNCNS+u+h60L7XOXuHkiAPlqGXJpPa5Bh4Pk219
	h7e87BhSRsMoGg8l03ToHsJ678ohEv599vXUPUD8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659547252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bFp0Zoxf5aBa6cz+AJ4ZcHKCvG/HzLjiz69sk0ZmQ1A=;
	b=VKeu++q5AoiJShLaNSRj4tD1qKJAMQ5kgM6TqSe7K5rnV1j/MsuhDzM2sJZZlJ6b
	JZQcrXwCZMwszR3q3yRtLwMIK+E+BI07pFK7TH12ms43mTVIewTiblfyvV1N3naCLEH
	vcijQZtw0H1/6KU94nLQR/5MGz1XThb1hPIZ96ZU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018264b977c5-e8bf463b-495c-4570-a31e-e8362ae3ca32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 82fd94a7241f3764bde3988bd7d4b4dd018e987e9257ad8d2d6144fbfc986a06
Date: Wed, 3 Aug 2022 17:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659547252
