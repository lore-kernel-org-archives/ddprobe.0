Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C21B7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 21:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655673419;
	h=To:Subject:From:Message-Id:Date;
	bh=Wphz+abfL+3aCTPOTPN3/0S8jWJYDumgXjDEN6rFZ4w=;
	b=FmZr3IPDo31fmtxbQ0y+zuDPR8V6qIw1ouKSgU8jUc0Yr4fvMu1TdmY7CERupxZT
	Hyld39/Cb+aZw8WtrwE2SiYHU6o0Lvh7KK1cpTzsvmT9gRRtq7uM5xm2VMF5qAu3EQ4
	niOqgt2nVG4vTYFRXjyPCjgILw7fPMAy8Rvnu9pI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655673419;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wphz+abfL+3aCTPOTPN3/0S8jWJYDumgXjDEN6rFZ4w=;
	b=OZ+sG1P38NeZBYUeYzvfSWJB+wpGDjp52KZ+p/RK3yNrjnVCrSktkZwoCORw0vPT
	wwIYLsRS5i1fGN7E/AX3l2/OzBHMc4x+brZ+dZVNd9pNwZXw3IA64aL9X9srheKcP6b
	lXytWTa7EqZgIhXAXsJfrXHr8l843BBA7lhySo7c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817dd37603-73403771-1cab-4bc1-8af3-e4a8b2c2c7db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba7eb210ce7f4df7b5b25c60d7eb742632a5b6b0baf3a9710a3a8ad853d78355
Date: Sun, 19 Jun 2022 21:16:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655673419
