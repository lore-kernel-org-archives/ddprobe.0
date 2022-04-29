Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F33C27B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 08:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651220219;
	h=To:Subject:From:Message-Id:Date;
	bh=452R+143fMl3JJ9BuwO1lnnobxZL7xIxs3UuBPtHUyU=;
	b=MQ0YI71qFp4I3JW704nZ0nmzIsNPrBwZm/OpJwzsm/13a/eMIsqoCv1+YQazOexs
	tFndAW8vyueqAn0sYdUp/UDPMALwOI5mZW8QnOBKsfSS/+bS6oVssII+GpYrwqPbauo
	Q3JP/jXCbbV7uNIhYA3mZEXEurU7mJYwlZpJrP+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651220219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=452R+143fMl3JJ9BuwO1lnnobxZL7xIxs3UuBPtHUyU=;
	b=E1eKkurjGOPkcMJwlpd0Kr5xv7TUuXaYx0RbB9Z98VOqkNMFwdRAIz0Wit8t/Qao
	v5hyfZOOe7UFDmpJjfhCTOMLCkYW7GdEEyFpfx0UClm15k5aGWp9LCwid6gSD9m8veC
	MmEk75zjNOdtGcLMCbWzdQLLuq9I7oJizTQIyEEk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180746501d1-62b5ac13-261b-43b3-ae5e-1da41d7f592b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3fbe4fadb3864406332ac149644c83534776fcdb54eac0858b878459b0a01608
Date: Fri, 29 Apr 2022 08:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651220218
