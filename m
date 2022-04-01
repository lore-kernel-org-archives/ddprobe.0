Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322647B
	for <ddprobe@lists.linux.dev>; Fri,  1 Apr 2022 06:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648796338;
	h=To:Subject:From:Message-Id:Date;
	bh=6DuBzYREYByFVRE1jnuIAVpPA3Nun7LaSXKDe6PryXk=;
	b=RtUPHmnY4HzhmBCZSMRwd+YJhBVrt6wNf+3PEfEP7iAwb2WZkPY7dBh8jU2yVS+5
	lzFX0zyvOdG3d68Ar/xHmZp0ZDMKQgxek768f5em4Ohh2ME4Ly9usfrETtAFl/d7m+j
	0UK09O5GZnpPM2lqaGkkU4B7GzffzVkO/Anu3RKI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648796338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6DuBzYREYByFVRE1jnuIAVpPA3Nun7LaSXKDe6PryXk=;
	b=MFYSDOxqIufeACQMjaWEVeS1ymqA0u25yg1RnjAykRCV1978nbiKVntiJst1d1K6
	tqNp1WUJ4QFCmZoJvbF1vnpuxtVmcwmA2JUB9me+Bp48F63mZgelJRrf30MDAmWESU7
	4Qdt5pDpEb6fZrwugwlB3lYpzC7En19aKQvbhn/k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fe3eb887c-8dcd63f6-75cb-454a-ab8a-ad5b15bc79f4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd5f5aaabe8f2e0703f50faf5bae8c642a17ff79d0fa3661902fa1bdd581b217
Date: Fri, 1 Apr 2022 06:58:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648796338
