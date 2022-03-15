Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EA9523B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647357985;
	h=To:Subject:From:Message-Id:Date;
	bh=qgRYG4N+PcjkLBlZrg5Ry1Y1xS15bygo/X7d0ZDaxvE=;
	b=Qyyd9mzetsK0vKPiSY67anSVsG7eo2JTXRa8/dPZ5jFsxrPEsMtdm7EXI+6tQmER
	reriQBdCNE0l8K2B28OeNM+HEraVhGVDeNDFo/uxKVvhvGW1pq6sCclGQ0uSCCXcvsA
	A4RtOazo7Izct5X72WDaGcsHQcz9TcR80v+ZUSIc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647357985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qgRYG4N+PcjkLBlZrg5Ry1Y1xS15bygo/X7d0ZDaxvE=;
	b=N/9CKndS2xAKsKDUUCrgMqYaRf6X423gH4FukBr0aMnOl+v/DL3KGsEpJtpPHmgW
	6ZDmPgk0NMHXVkDQUe3jY+J9Y8tBrnhmU/gK4ZsTBGd2sngPjRaMY2Ossc56QHn7q+n
	qVbHjwWgE+nfpIqUsUwDQSSE104OyYwOw5VZhtM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e300061-1fd2b6aa-79d7-4163-9e29-dcf5ff2f4577-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2198a2f7d2de655f96008edea98a1d76885bc03a8dd24068e31a3a144a51b779
Date: Tue, 15 Mar 2022 15:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647357984
