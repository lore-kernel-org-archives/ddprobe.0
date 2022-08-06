Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593BA10E9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 12:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659789652;
	h=To:Subject:From:Message-Id:Date;
	bh=INXLCydWq2gCZTTQaS0V5aA82mcwp995qGVAixiMq8o=;
	b=fk+l0kZv3DWc1MvpISBQqdr3E52qJIwiaiPHiJTPZetP+0Ajl2xwghQN1e9QX4Dh
	2NZSMbctBYpV8bl8O/9GQWBEx99rLPzLWEoY4X3NZldizSFpaUKpHkvetXWJ7BpN+6U
	wR4/Xl8UZVFpEUGum0/eNu8lyXbYJi272PIkVoKw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659789652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=INXLCydWq2gCZTTQaS0V5aA82mcwp995qGVAixiMq8o=;
	b=TEJEvTNPrOlRhdrrbNDGZEzwPkrARP6bzaZmHh5azeRgc0kjZfvprS/qumGqWsZv
	d4mYrJ4gfn24BV+DBl9W8m7ghMlhdfF8Q0HOTjBK8dDaDctn9GQTysn27GtKZAoCBAr
	kA9xDd9Q+vD9LEGfCIR5DdLPP14S4rfY8ArjgOu4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182732c3297-8d3816e2-64be-4747-8f59-8bb81bbba16f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3a15d026b57c7a52931bb3fda200c28dd7fa45a5409ac43d8b1add86b959a0f0
Date: Sat, 6 Aug 2022 12:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659789652
