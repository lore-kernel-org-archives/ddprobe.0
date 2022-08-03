Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAB762C
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 09:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659520253;
	h=To:Subject:From:Message-Id:Date;
	bh=IZgTejjyJVDf4hEwygJZ47Xt/92yEUZ+mBu+/JCuKlE=;
	b=CstgACQPWXnganY2dJspDnSyTEkzAbGDjk39p1kCjOT4hKuY7f6F/L2e5jRNBVqQ
	JRO5rwDRPLoGQiSd4AN/6PwQvznsqIKG8fbTImkXUD6ElFRJjtBsBpKHlSaMR7dTue/
	jGxHYAAyc8GRnqjfLESJ2p/A+XIlH90c1tr4xikw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659520253;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IZgTejjyJVDf4hEwygJZ47Xt/92yEUZ+mBu+/JCuKlE=;
	b=HhTjrMk0Ul3FkdfJ+7La/tuvNu4hDhP9xBdd0qQ3U6LtqFFpx+o+ZRKAyA7tE2ql
	ITDNA/4jZaKOc22imesNqVlWI7iDw0feaW0Y5/ed0zNqzIurYKwgTdq7pzCaNmxaoqp
	XMbCJPFkh6FSeVWxx2tHrGsM7dzkqg/Ax71b0MYY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182631d7a82-94665d70-d491-4072-a37c-2e3aa85a15cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 901246b886c946f8ba110cd192be8883308b1c42135c75f4f17428b23730fd54
Date: Wed, 3 Aug 2022 09:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659520252
