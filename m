Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077BC623
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 04:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652587919;
	h=To:Subject:From:Message-Id:Date;
	bh=NHwn4jKZ7DqaqFizwc2gdHvRhUzSQBfk7w2sAjlvt7Q=;
	b=CsMkCaBj218ba01jOFlkHvAOCJgzkBkLY5Lm2dIh71cbxhDPkoA/lRmW5O5Laj/O
	lbrxkFpljECNtYr4ODxl9YIFKPsINpMrztHZU4ehfrndbfoxNUxB0rXJ5zTuSSlLQb9
	Fj3KNoZnbahdCg/L4vbFiZWCzARfK3DH9YgMWAzE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652587919;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NHwn4jKZ7DqaqFizwc2gdHvRhUzSQBfk7w2sAjlvt7Q=;
	b=XD7uUulm9KbLWt3BZzMh4v/6HJXW5p593cGJsksovEeoGwQffNa6lQlNGa1FAOjT
	2QkvLkiooZTih+kjeAqB7UTa4XpmGOK8ue3uxYP9Fn0tSzzcSFdRCATVfqxFBNazRnj
	aoRo6sa81s18HYRpiylaBmI4r0pn4ETEDRW+GCvk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c5ea77bb-80875fef-6d3b-4ae8-bd59-bd3a092614e0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9df63ba7480473e847ef4381a879dc96dbbb148135769a310fb4e5e2c9cc2f91
Date: Sun, 15 May 2022 04:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652587919
