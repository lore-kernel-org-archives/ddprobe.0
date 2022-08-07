Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9077D7C
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659907853;
	h=To:Subject:From:Message-Id:Date;
	bh=J2eisvnMeATrrsfgNd4eY6my+rcgitdWy+PfgG7Vsc4=;
	b=OW5GiLkGTOfxSWPY0aBxdXS8vHyYfYhxKgi3/N5z7jL2GelGxZKYKLpJWFSWxPCY
	ayuOQ5FQ+6jMPbXT6VQ95+4QlFSCkrKTqj7COJhonnD7xH4lQ48FJ7MaGZF2tINKRM+
	9vfBztzsIp6QOwOJYGWJ2fobuM4uX0UA5HJW72sc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659907853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=J2eisvnMeATrrsfgNd4eY6my+rcgitdWy+PfgG7Vsc4=;
	b=HnfLvjkVvjZknE2AfJbvQebBrKXjzEHyayJ01XchUcoC1vYpB3ws6sDn6U+ab4BF
	/xLeDkNp6fRvFUm9u2q2QTKRWTKeGSq4U/yuRdUghudTQIzNsGqN6s4a1vlkgVnrWCi
	jqtIZ8TzRyhONm+kaK5OTwA5AmPOah3RRVPXQXpw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827a37c97c-aa1b5854-f594-49dd-ba76-6c33f46a1b07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 51a77377f5d6041fb100c6adbb5df1ea8fa45ea1d4f747c136138039ec241644
Date: Sun, 7 Aug 2022 21:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659907852
