Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEADF7B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 03:10:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655608259;
	h=To:Subject:From:Message-Id:Date;
	bh=6JunO4544KQIPNRXAPp6QdL7XRKJ154mN3ogpKUX48s=;
	b=aWKCFdioAO/OUp+FB3eVrN8x7JwiI0RZc0MU+pie9tmdQda3CPjLf8ttTrYVEeKY
	JYW5xTfGiEFo9Id10Z1SjT1T6XSq6F404qHkdt/2w56ZYfIUwXm+UDZfLhybWkfEzIP
	OGKP30NCrKVgFm4mPp/+t2R7tMvOWOB2rxRdER6s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655608259;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6JunO4544KQIPNRXAPp6QdL7XRKJ154mN3ogpKUX48s=;
	b=TKXYWfmNJIW9/Ajc3s6g9nHl5bQ/c1GbTv4L3+iDOZa4fEvXhcsd9LmppJVUJkTJ
	VNT1BZwdI/niKjX6NRIREq0VgRDfzt7luGewwx2AB91URotcwn2Ov+I53QB1j099UFq
	fgxBe2BZvsdIKJjLG/LIYATAazJgbW7O0dNhH1a4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018179f132dd-4b5765fb-abdb-4c80-97d0-eba19d71fa02-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 43a499eb35ca157a0f8f0b2d28c662f403ca877c095399537c8561e6bda43857
Date: Sun, 19 Jun 2022 03:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655608259
