Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D62E7C
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 01:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654564859;
	h=To:Subject:From:Message-Id:Date;
	bh=eBTewf19TlVUQm//1anluVSDKYhYq06EJtpjRtAmWJk=;
	b=HQcv5GZjL0C+HauY8C1cNKtN9jeCF18XRxOBuMkTDxg4k6UGB3MfDApsuc+TNxHo
	H++ICj3kdtdovjfiOT3w3AtcUPnGZQlRZ3q6OQnDwNXXoVY4Hsf9jkXdn1ZfBkJ0vHl
	oX4mvvt/5+/RmRPFonbmfSNIG/D7D2rrRUhYcGdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654564859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eBTewf19TlVUQm//1anluVSDKYhYq06EJtpjRtAmWJk=;
	b=AFI0XJwQLk4s1nPlN5KSYf1beSBLYXpkRBaXHbYPfB1NKT9p7PAcQH5gW+2qGVJn
	cdWp/t0N18XS+4i0VjSrb4QbLyrzA+WWBrq7Zz2OvVb0BDyj8Mp9xH8oTt6AqZ6hEXI
	8fw10YzqfRx65jTmZxUMdAzYZIlnPTml3uPssYuI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813bc02dcf-5217173c-795f-40ff-8e1d-884cdeca9bc6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d315d540e0148b050bf1aa6e4e26ba395ee8d8a31f24dde9444d5c9d8a97c564
Date: Tue, 7 Jun 2022 01:20:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654564859
