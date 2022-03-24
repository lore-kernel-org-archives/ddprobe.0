Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EFC23A7
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 19:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648151038;
	h=To:Subject:From:Message-Id:Date;
	bh=9smpEPj42sQIRRNXwoaferDrpg9MhRNaXwdeyY7Hymg=;
	b=R7BcrG6AwzKIW4/z/7aqr32SCOV1g8Sax8XQvgJ3VvGbCPG9Mr8nWEav1g+0XJfM
	MyTXqN4L4iBXnQxlbL3QSv0PxPLsO49VCA53ZzfsHMzZ7+BUn+Vrjn+FBzC2ndDAr4K
	9lg/8/Y8TDWen6Jcu13DZib4K+JbaLOdBpRhAQ9A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648151038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9smpEPj42sQIRRNXwoaferDrpg9MhRNaXwdeyY7Hymg=;
	b=AbKSZEHlFswkLsD1veK7gTBmrr9Qn3Jwbpv1vFRyKqYl+ZaTQuAtZEWAMxz762oG
	J9wAQwRVwca68pNiCnJJZDGyBzGr/eE2DZmdF83/RZMxyfTjUjrvpZpMtqpGkibCm2J
	toAfb1KL9MXsBbgHjEodhF0h55L7WDd5oJQT/mzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbd75095d-bd25e2c7-3e13-46ba-ab17-cce9c1dc7b77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 910b872e9a3f8e74f458f4fa1cd20d3e2ec910488ef3ae2e25599d856639badd
Date: Thu, 24 Mar 2022 19:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648151038
