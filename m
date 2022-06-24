Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D5F223CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 11:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656069412;
	h=To:Subject:From:Message-Id:Date;
	bh=rccSlf9daNtdDLwJdEZxTCW9x0kjqhQ3t1gpbWE8Wpk=;
	b=VZKN9Nj+9MDKi+qMWL0ZxoaZlYP8HSEXufY4OPok5RGl4j9c5FzGSVkXoMjqUFD5
	jdCyBXP24w4SIawsL4GV6uBP4Ee0IZvbE/dOQshhNkgT00B0ZgADQ6R6uViAqHTulzv
	fwyMLswmdp5Tl571v4qiuKV6MHoNJRaxNTqKCmQg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656069412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rccSlf9daNtdDLwJdEZxTCW9x0kjqhQ3t1gpbWE8Wpk=;
	b=aQ7M6BA9D+dAUwpbjkiPPtbLpegtpwL7Ub6X9yxy/hbYdsFSwDCRtKxDn+0kvJoS
	qzCMRlCkqfn7e9Jt7I5c5fTssqRQWrSm7uutHVu9A/elAqbB967ofQoUyT0v2JtgezJ
	IeXwq9WMv64nS9X9+Jq56O62qFxzKpqFkMhzX0FM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181956dd593-4d4c618e-91f6-4532-a9a2-3bf2ac577b32-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5450021f993d463d2890fdb00f1b6ee0340a8535acfc9c533c44565a0645053a
Date: Fri, 24 Jun 2022 11:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656069412
