Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157F37F
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 17:43:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653673379;
	h=To:Subject:From:Message-Id:Date;
	bh=1ZBWCxDR2HEBTS3YyvtuVHR9uwCopEB+QJbF4RwnRe0=;
	b=jUGUrp9kzRPFqd2y7e73qYhMcYY//j/Ox3s7OoWdLnsV+BeAlLvtFUCGGucN8/Cf
	TghwDg8znXlOdhNhgMMfASSjWL8UHW9cpLbatdbTZeCnuUFXPN3f95jW3HFp7nvyG8J
	kDkYq9uhQqkxvflTs+kQrRFCBa7CNIa/DgPM3uQ0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653673379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ZBWCxDR2HEBTS3YyvtuVHR9uwCopEB+QJbF4RwnRe0=;
	b=HKAEueM4qbsk49HG+zv7Ebc+dkT9xqvFHgWpxLgkhWhqbpx91z5KBODNu1E+pS80
	DS7P0lsqOiw+dGmYcst2TilalMN/I5Ea75KB3sN57fWlVe+Piw5YZIXmOTBzuvmzy3h
	cW77+vvH705yck1X0+/zq8KuLIG6Hd6njDFsGNoI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181069d45ff-ff824b0b-e322-49ab-9807-ecbe52c647a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 83eab77a5b5ac092f08fcea19abc4ce88d9516b22dee167d84d287d71510370a
Date: Fri, 27 May 2022 17:42:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653673379
