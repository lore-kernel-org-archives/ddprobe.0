Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D603A7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 17:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656091012;
	h=To:Subject:From:Message-Id:Date;
	bh=3n/3leEjMxeDBQhDgKB/GaSAcuQ5qZhtJVMMdBNAbgw=;
	b=X8jz0kdWcwGBQlR4YbSFW2KfiA45n1WLaM8JhWPF4wT2HME+Mh+fGvQ/40vCU3VS
	24km28ioz1zam9Wg13XWggVs/RdFxTHnAg1ZHYZMHbsI0lzLCWS36zSB22YzLU7/z+G
	Vyol5MdbBnFl76A2aPznsEamv7X9T6LkbL5WoQNM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656091012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3n/3leEjMxeDBQhDgKB/GaSAcuQ5qZhtJVMMdBNAbgw=;
	b=A8h8Jbv3n+EA7WPKPd22bEFhcCbhNbtx26Z+9rhVuqGc7lcau3yaRkxQ6OPQR9Na
	Ys0CMEtH/XSJaCA1uURtODofJVVqHZJbBi1FFzKwsVsHPV8MsruorfRMhenXAzKW+lF
	RWEYvzXf8jbUlp27lmQ7bfNXC4v0XaCBsSStD2nA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018196b76cbc-615a562a-fb0f-42df-8bd7-01373c26ef3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4573e0e8f24836d9433608a86aca225b240c6aa7cc7e49114a59b99be7b1d224
Date: Fri, 24 Jun 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656091012
