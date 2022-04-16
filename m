Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30DF2580
	for <ddprobe@lists.linux.dev>; Sat, 16 Apr 2022 16:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650127498;
	h=To:Subject:From:Message-Id:Date;
	bh=RmoIe+2gUTEbvlY4lOyW6JirB7qWDUuXOclZfuFcGg0=;
	b=H8C58PKnLf6k1ejjNWH57P5heF7/gqzg8d2Y48O+3+Wr0ShXuwPpiHiLHID/nXWE
	XeFYDVq//9nnGAnXFz8Ucf1VpiyH52juuSq4bJ/ZMqOI/xYkQLokGAWkgzfoeJ0FYeC
	yrjAmASB3wsHQYF2hpPTvyyEpkwcChBqbinKZ2ZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650127498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmoIe+2gUTEbvlY4lOyW6JirB7qWDUuXOclZfuFcGg0=;
	b=f8yjnlw0od83Kr51aUG4TMXFkk1Govr8YKHf7Jls9vXNXI9p2l3yN++r0U7P1unl
	yCj0GD3AfefS0tYTH0AWGlaaWtrbcm4bQKH3Ip9OKiRjveAtc0ouqyCktfm9C5ofGIH
	yxGlaCQ1qp3eAbI6/7kEDZYFt6rw+9O4VKdxXxRg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018033436c48-b83e0433-bc9f-4d37-8813-c996b4233f75-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5f6743129430e3f21ebe66fd4b7fb96ea6043f75cfa20e12db0df27f164a6d1e
Date: Sat, 16 Apr 2022 16:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650127498
