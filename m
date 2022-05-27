Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 099D84696
	for <ddprobe@lists.linux.dev>; Fri, 27 May 2022 04:21:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653625319;
	h=To:Subject:From:Message-Id:Date;
	bh=VEGMof9DrecgYpjxsbSPRTignBgKm0wrooEMQzeYqtU=;
	b=b4hf9B2+lCjzDhPiXlhXK3TAiC2aTkPH7q/Rf2aMqHbbBRtiXQEtf4Bo5K70jdDB
	J0Jk91RSy9ZO/VxNDexTRI1NrBji11tG4dA8a6yb2qb1tGUzzyUkZFMAhgc8fQFix2K
	NUW/cu2Jbuoqb1LnfFITFT6hET0dmC7kmRfny/8I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653625319;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VEGMof9DrecgYpjxsbSPRTignBgKm0wrooEMQzeYqtU=;
	b=JFYBqOgjMyM4ScvCmR3uY3CEO01/abRv42eC/uvQgVQsJNQdEneT+QpiakJPMzBm
	DGzc6uGij4GNmis3z3vvblNhPnypr7r60lRGbcwEk7uYhVnZtXvcELTQSqVWytqTRlS
	2uZDRWpiBZ/nVxxkr3c+SeDed00W6GzdzERiHNBM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018103bfef94-3bd66734-14f7-4119-af4f-a0118e787903-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45a921a7535a0552f12b9bc664a896e07cee48fba160b562647ad1ddd05cfcbb
Date: Fri, 27 May 2022 04:21:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653625319
