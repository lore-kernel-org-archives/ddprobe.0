Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DB491878
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 13:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645709184;
	h=To:Subject:From:Message-Id:Date;
	bh=3CqJxPwRgy80sic3cX8y6CaWRGha5x0XtOMmZdhZJR4=;
	b=lYy8Vd288RyeyK1mTWSglDhA+X1tGF8/cqUqEkoDKB+Cic0xYHM1KapIhnpp6YCn
	ZKT2uyFTBCJM8M8lSLhdeAVmQDtvDrU+iOURZ0dENgNh5NLWbw5Rx4/Rp5g5jLquPu0
	PKBRzf4XsJtTaOfOuXEJXwPvPCAhoOheUeDnKB4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645709184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3CqJxPwRgy80sic3cX8y6CaWRGha5x0XtOMmZdhZJR4=;
	b=XgZMHI8pQVQaH22KqxZLQMQfcE1KMsmFYUyuPsnTJNvYRcKJRQpxKJIybtiT5cVS
	e11+jJH41ufaFLm5bSUPBQEJfOQ05AhdV8r6B6jbOVR8+URPPknkAFZONU2FIQqYo9N
	kHq2CDsSlpx6SVzqh5BQfPptu+VuvWcgCyWDGAyM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2be94ee0-aa973a21-1f21-4029-a830-1e5263bbb7ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f9cf4d8cf6aa2b51476ed53b11402c893cc21e22445a4d7af8b93652d62b087
Date: Thu, 24 Feb 2022 13:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645709184
