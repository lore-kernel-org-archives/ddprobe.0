Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7C812F21
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 23:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655077739;
	h=To:Subject:From:Message-Id:Date;
	bh=bgMe9m5Tgi/PuWHgwbhe/L/ycMKdwOYOzKQUq71xdfY=;
	b=eDuAexmOEnsmmfl4TOGkxZOuB+180dCjWslHyxUzgTZX49l2dItMrHIhPq6satth
	VHhgaT8M4ZO45OeVNUrAegAJhsqk6Y8y6TDeM+EiIq0REqpKM4w8+9ZH945KdbSIOKn
	I831yWGYvlOg93sQ5xPkXmqhDEZTRCHNwLAnSLAk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655077739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgMe9m5Tgi/PuWHgwbhe/L/ycMKdwOYOzKQUq71xdfY=;
	b=OBNXqwEqKtWOPbzPemcoKbF0oV4m7zRM6hwpmwPiwM4/LkjXo92QOaiN+RAJyx7o
	F9Ae9XaIHDd855sNlW4vJ1RibDg46A+HAw1vYlSCKVgzjYVNxjURG3snGuqkUj+cvPo
	OB33aQKdUG4RnAB6i4org8uju+sitnLR/bYa14DA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815a521ae3-5e1603f1-8e8d-43a3-a3a9-0bd0a62ca412-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aa4ad4fa07ffe00bd763eb54a3849f98dd5e4e0b396dbb489c868fe1bdaa6b60
Date: Sun, 12 Jun 2022 23:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655077738
