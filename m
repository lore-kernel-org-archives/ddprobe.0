Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7C217C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 07:33:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650872038;
	h=To:Subject:From:Message-Id:Date;
	bh=1CHUMCQuhRnflGWtn0MfgGwHrXSkV7yJbpBVWDSHyi0=;
	b=SjsTz/PVJbHLcz1FqHa8gAfqmCByONOdTroT+rrZXYpiDIFmQqXSs3wEK/aqkhv/
	kXXnIuloXc/sp0FHhucpojPM2heknLx8G0hh4JrfJkMjQRs1qfVHtHd2vP+XsUwSQ5L
	LpFSVdZV1orm3Kr8hLqL5rFecFog/mRhy2TJuDJo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650872038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1CHUMCQuhRnflGWtn0MfgGwHrXSkV7yJbpBVWDSHyi0=;
	b=UjmGfHa8A6AFwMCJg7yVBZlCBcr/zheuf2WjYEscvBxsP7U2cAsW8DM4qLcQopUe
	ZUBDHtF/q3lgLlGZkdLlaNQBA0syz8m+gwMgjwYhgToIC+Fcvjc7TY9jRx1mOXqDS+D
	S8wW29vs2Yib4/GUAoLHljwM77dh1Gpfk7q/T5BM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805fa43370-60d328d8-febc-4a11-9b1a-5b8e995095b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fbcdf8d6a6b7a7806d8d64ce277642dc10e8c08679ea7eff249ace23936d5545
Date: Mon, 25 Apr 2022 07:33:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650872038
