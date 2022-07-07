Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D1C2563
	for <ddprobe@lists.linux.dev>; Thu,  7 Jul 2022 18:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657217212;
	h=To:Subject:From:Message-Id:Date;
	bh=1azdKJR7WjozsW5HNnHtBHDWX8DOoCqLfMt36tpLYBQ=;
	b=GLKBo/lUs2QDLEsRgp5TAOpoEcsz7N68LFePNxtJ0Oa3lps5ZP+Z8P0Y2CFq46e4
	9OCam1w6z9oMUNZRBNV0KRyqHjR4+o/cGdA9dHOt/vSCoplitVBdkeDEHWquHJdRtJ0
	SjGiafXGEgJZHAppliDKVy1utIeCaX/FOkJJZEm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657217212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1azdKJR7WjozsW5HNnHtBHDWX8DOoCqLfMt36tpLYBQ=;
	b=Gxh4e3k4nwL5xOXlTjurit58AxAeqOXHMLAB4ccDxXx+EawIdglDp8eDuZqpbsHc
	lZze+GnuQxlHQGFwoHhwE5KpWeUyse/zyswvFGZiHGNQ/KcZh3tgvfzlH/G8NVq+moQ
	TtR1hWDIns4Z1QWk8RvpMMwI9v5NwiDV04dKlHAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d9d7dfb0-3b517f91-1b91-4d52-b790-a961a47b617a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 89e0497e9e727e185aef21114352963a01d15338d5a57ebf869ac4e4af39084b
Date: Thu, 7 Jul 2022 18:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.07-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657217212
