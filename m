Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAA1623A3
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 22:27:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653690479;
	h=To:Subject:From:Message-Id:Date;
	bh=/vHsP/X3UBesWMZ+RblJoYV9Ey1nmnRQYWoCRd3FoJM=;
	b=fgd2PEMm4HB406O2KsfRv5VLgm7NdQ3IVVp9y7APd1F/dSCsya8yWzgYChUTDMaJ
	MEy8rpUgIyuXvaXo6hU7JgVDgCYbCwLYxy9MTFB+coz8EeQBlVpDpXX55iFiVZM5ZJI
	dOhFAE7CRgBnQYKp1+e9EsJuqochsN/DbUQCwb7s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653690479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/vHsP/X3UBesWMZ+RblJoYV9Ey1nmnRQYWoCRd3FoJM=;
	b=VT7ws9LBSWTGEUmddfHufaI063oRyTWO0y2EPc0edRlCO9l5soJ9H81dPIAoHG5U
	EwtrRGWazQViR9f7hENMDaedqoWdsAod/papJo5ARI3Hpq/9VIU1D+R1954voM5kJX0
	oeUPxcQCUpuQGz/5PsQniXcVZG7DAtJkUiYXMQ/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018107a2329f-cd7dbccb-a54b-4b8c-bfcd-6926f5d62684-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 46b16e0faced0f4c3aaabdac23b752e7070569ccbdab622a90655056141a93b8
Date: Fri, 27 May 2022 22:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653690479
