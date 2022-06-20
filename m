Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1527F6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 09:28:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655717279;
	h=To:Subject:From:Message-Id:Date;
	bh=9A/I71jdOAapNeNT3/xEQVPJ8dyhHnW2PtKCNH06MSM=;
	b=QjPssJcrMCtejdmg6ocRm+1jFm5xnvWY5cS4QSHx5VuSmzxjW2yH3rEQO2RAm8RW
	BRCvJv7FBhqi61Q0QjEO3xmzf8XLFODvmJPv7o9+12czkbzeWOYi3cD71823g3Si7e9
	OBfJpGmGH60itEvrnZMiSZB6ayWKf25cZLQ7qGxI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655717279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9A/I71jdOAapNeNT3/xEQVPJ8dyhHnW2PtKCNH06MSM=;
	b=f6Rd6joU8u3JE6QTzMLvYB8eMrXucXgsDWG0O2EmCHSqx1me9zfkLG+JtYEKmHCj
	8aKy7UYfB9rqPL7rqq7MQcWdzujMT+Z4CjT5/0w9fFN9WWhLS5CbIF0tKRFAT7nbfXc
	H+mhxUY7A6Yv5JW72+NUt5p3/5I8xdyMX76CrZhE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818070b5f7-9f374b80-639c-41fd-aac9-25ad70295ef9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a98234819855686e6fbf9019b60f2ee7e35e3b91d718f5aa69dd7b0284e55486
Date: Mon, 20 Jun 2022 09:27:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655717278
