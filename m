Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E97A
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 00:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657240012;
	h=To:Subject:From:Message-Id:Date;
	bh=mA7pruVqNi2YO4AkXbiRy9NmYhDpBuSYexYkFRwvhgc=;
	b=R4FUI06m7ochnPkV/Acj8AoaqZel0t2Pki1xf4S5jO4dAX9a4bgZf3KgU/t9ioR3
	H7KSH3R0iXEKZgSAj6+SvJuAnkm3XQhLqbb0CffqfwRHzdZo0QdeGl+kV5pKy+FrVXn
	DJFKr6nXoOCeLN0IbDZlPmJEM7qB4CXi56vbhyGI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657240012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mA7pruVqNi2YO4AkXbiRy9NmYhDpBuSYexYkFRwvhgc=;
	b=fbjJO/Cq5QUUkXPri7KWYoQuZ52kLQD++jI7E9fOj8u2eO5yoicaT4sPuKzdx7X9
	7UayByZ/CmcIIfrFtCjh6qkMjIz2Cz0JOWEKTThsYT6rXltqRqayLWew+ZFp4kgtUo9
	/1P8xlAjenDSTn/y4DjAX5FURAXssA2uasLj9H/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181db33c60c-7f3b1d0c-0340-48d1-8586-37f368850fa9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6bd5c71ecc08942a8ccbd2b9d3a39846a75902c1c3110fbcb4877756deadcfe5
Date: Fri, 8 Jul 2022 00:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657240012
