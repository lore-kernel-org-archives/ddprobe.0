Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEEB42CA2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 13:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656338212;
	h=To:Subject:From:Message-Id:Date;
	bh=MYPg89LQZ0702CZqiO4nbLQxZvGwy6YmIoNh4rValdk=;
	b=eRvjCJGwmRcpXMcgvlGnFBVmC2U673A7kGMKuTAye6q6tS7USUykRZO5LfXsFFBa
	h+4fhndVj2wwqrXzKRq6+bwpxUcQhCZC6zmd89XMfW1E9LKnm1zmBI+O9C5TRAbN+66
	BPzScXEDUA6HRY8SU52rtXJaNbqPHfsXWGf5I4Vk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656338212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MYPg89LQZ0702CZqiO4nbLQxZvGwy6YmIoNh4rValdk=;
	b=J+8iYKZMHACFKXqLAl22wruoZypD6o4XTeOlWahtwf+T/KEfHNzShnbSlOBgYHh1
	JfFa3ZWspfHwBosP5IAtDYGuts9E4f+bbs+XfpwBH+WKTC8RI/KPP8Tun08362uv3G3
	ImUp+YuX7T2PAeeCqukRktBrdwJsuEkl5wjSVOSY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a57365c3-857e8645-ef27-4caa-a934-8b09f4b869a7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c97bded6269bf24b7d0cf290ee1e8580d933834a2061125673c5e7d7c7cbc75b
Date: Mon, 27 Jun 2022 13:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656338212
