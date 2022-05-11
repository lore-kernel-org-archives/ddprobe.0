Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D2E3207
	for <ddprobe@lists.linux.dev>; Wed, 11 May 2022 19:39:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652297939;
	h=To:Subject:From:Message-Id:Date;
	bh=12BHa2KSIJmIeb5RgiOci9OmpDSnOtWqHFc33NTPd40=;
	b=MAYBUvuyIlki7S5BcYe0lbSXcsfpBDvFkxH9qRAofs1C1gzjubCOBvI8JnBFyU4n
	RveBNVS3gWnXwPUpDKqdSyqwBNQuPWlE76VQWFCK3blcqVbKHdSiFAtRSLLvtlDtz8L
	rY85zNn+379CVGAs0tMAMEw4cBhM/4XMXp1vEsyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652297939;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=12BHa2KSIJmIeb5RgiOci9OmpDSnOtWqHFc33NTPd40=;
	b=emrB+IwJfAKlOijetVZ8eTl3bCuCHnqtxLYgZmHsyOaGjlurwPTYUIHfwZ6ZLWop
	7AxNXcQmccNM10QMASEUyX7B1oXSsd/PKpeMwjxKmSvfLAndltgE+DJ+DHBaj08PiXG
	/RoVi2pkXLHmLzK5igpTLdMiF3Jk9SNJoEzBrx5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b4a1b93d-219ac6ac-25f1-4976-afe7-03e5a5d01c12-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 09c814408a58dedb95baa51932f5811934ae9dc6804f25f826ede786984a7476
Date: Wed, 11 May 2022 19:38:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652297939
