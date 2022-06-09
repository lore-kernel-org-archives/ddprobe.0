Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173127A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 17:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654795499;
	h=To:Subject:From:Message-Id:Date;
	bh=5TL6ROAYnLMZNMHSwpSZEAYFY2hgheBzt/SKJkAdoPo=;
	b=Y+uGkhlD7qa8bVNnfOKBywKSynRJjl1hfc7oTgXqmaIgoJCF1+9BJtWkS7U+Cfo8
	j/iKQNtBjcmBgEEkb4WYxRvFmLmJCzmOKAjjKGrY72+S60xcOk+1+QVWcylLyTmrD8A
	Q17sRTvW9U/F4IoDhYrmoSZz9/m5qfXLTzJHlyQc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654795499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5TL6ROAYnLMZNMHSwpSZEAYFY2hgheBzt/SKJkAdoPo=;
	b=cR1bbOAoYmG8r6Hn2nxj1gaRdSuZxs2IEEmvPsYblHb3LbAGydKV+BCCPVrQszH/
	EbK2TnvOPJC0MSPGUdlG1MFHmhY0nP10pv4fROIzFaDZUSqX0UL4XCNoap1ZdrU317z
	YAW36RGBQFAeL+Ef4tvlTWwIaR3urRtZE49QZOQY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181497f7707-c3592b98-fb3b-4b9f-87dd-b44ebbebc7a8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c4215a0941f95ea2bc422434bd81cb2e8773bb7d27bc219967ee655ab68db269
Date: Thu, 9 Jun 2022 17:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654795499
