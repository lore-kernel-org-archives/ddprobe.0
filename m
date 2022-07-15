Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0601D33F0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 15:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657897612;
	h=To:Subject:From:Message-Id:Date;
	bh=hbewmD9v1XiZFvdHlZzsuUTwTATuK+lNg9y61cD0gSg=;
	b=AylTyCKPmVoh1YbIkVXfzpw5M+t9r6ic+z+HZH3ABCSY2QV55nCAlXdiEQ9H1xOR
	6g6DIL+EDyrknud6C5RudyBqTQWSTXS1dAa9LDEH3f2sHeBqbvCP/0E875LBpG2CNfA
	DjnwEU2KAJywjMQzAH0nhKONGZNNo4cswGXrPhnI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657897612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hbewmD9v1XiZFvdHlZzsuUTwTATuK+lNg9y61cD0gSg=;
	b=SSz+T+abwpMzKcipUWq6VlK23CJBoJCp0XWLFvHxshTnGIsHjlCJIai3CFx6FRHr
	AJ2TYXos0KSOwNomGSBSpMZwNJkd0OI20x7rs63PiilPmEcFuZZRqHiEL8Hvw2Zr3cm
	rHhR339B1sHW4fcnHIc5eg2wITh/vM+PxQ+Hn6ek=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820265f40e-9f268471-172e-4845-8420-bee9cf2c9e7c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 674792ef627f0d58fdc629f538b4e5a6a9520a82a8b821048a3dcb5175a01b9f
Date: Fri, 15 Jul 2022 15:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657897612
