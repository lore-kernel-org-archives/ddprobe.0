Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F874C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647612085;
	h=To:Subject:From:Message-Id:Date;
	bh=rxdVr1KU+tkwuvhiwetXT7sB1lJPTGQAFisK/QsROhU=;
	b=f6TGIwm/M39puTj5b9SqBRX46RGwJojw5c7LmZ6MDETB0fapgj5kbomYSRisbgPs
	IbjADtn6mJ5P5u2hUISlmqffvjhnqaCeoIG2flcJS0LEJWhES3+MbpjZg86fQwMjisV
	7+sXfQTZNa5dcxKVgrfwlm7Zoo713XBV/Qx7wHGA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647612085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rxdVr1KU+tkwuvhiwetXT7sB1lJPTGQAFisK/QsROhU=;
	b=cOgY/pPWsvSVXgldnsq+uGKG3GPMlPFyIeobeBNZJy4AlzV2q3x+7RcCzVC6Aqjh
	chGxzBmC89tYsH0+sVSRenRI2YoktccCjIBqtB3T3YMsh+1rit3dAJ+vkDWlBXBfb5T
	dYS6HaYB1HZkQFTgDAl8m7v8uJQyvxPJqe3jQ8Ko=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d554220-5b41369b-f7b0-476d-823b-66701e948b2d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e0066e658b8e4e6b145f15b28048104d7633eab4ccdec049b9ab452c73cba71
Date: Fri, 18 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647612084
