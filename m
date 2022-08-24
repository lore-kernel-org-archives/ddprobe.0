Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408237E
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661353852;
	h=To:Subject:From:Message-Id:Date;
	bh=wb8SSViQsth0dnI+VAf9DgZR4ejA/rQXszK5lnqzwPA=;
	b=WKbcfa9dVdH/A5tS3xFE7+aajE9D27jFols2oCWRdjcHot8AQ9CfCwK/6oyOQ26m
	9kEYc0elHt9PjVR7FTt5VA48LsJgXox0MUG41VlDkDQBfx/i8TqM803QzxlOhAqYttb
	5B1UYy/OS/XWHgwVDpcPr6OmazanVyUZvLJM3Rzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661353852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wb8SSViQsth0dnI+VAf9DgZR4ejA/rQXszK5lnqzwPA=;
	b=cAILJ8g76GvGM1Sh+z+bzIupbM3/dbywwPjFX/7vRjd0aiaRjRqbE7+HJHcEamdQ
	f9H7fIftrwNRFg1gk6G1u3NNzhPzpPdRnoou1g7/MjDqt+jZWvEEYjqiVCH4flU1JFC
	cMaKu165J6WVXDKPmKsuNf6MHOqhIf+mmcVlmgh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182d067fe91-c5d15e79-556d-4873-9a73-79de76468055-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9de6cd1c33463038937766961593a3976e4a894c33749fd8a11aee9ff00aaf8b
Date: Wed, 24 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661353852
