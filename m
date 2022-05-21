Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E07CA7E
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 05:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653111659;
	h=To:Subject:From:Message-Id:Date;
	bh=aKP8pMg/BQQKEdKFwU8YEM8QEIMzil4DHSdnpBNgBJQ=;
	b=VzrKkXbmbMU8sCEfjNQOXlu3iRcGO9/YQnUTin3tUBcodIy8Wyb5RF0E3yJYEjed
	YZjNE80nAlJt0dgcwWFtLUnSGTMisvpz2UM+zckEGMJuoyWSpYFAN+6bJVENjWZhFRN
	h40t5MnM3qyuL6mNVJ7EZCGCjpnfOKcbgDicHrtg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653111659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aKP8pMg/BQQKEdKFwU8YEM8QEIMzil4DHSdnpBNgBJQ=;
	b=iNkIPO2jpbNbzHZzlNsagldF7q4s5J58eRWu5J5dHxEea1/UQ2ZMHy7B45w+4sPc
	p9YrIkzZ/25bPskqnwsR2ogidY6+fFHS+ozj4yPOiLDyzTwYo67TMEBDYN61CJ23i69
	Q8tpWlovKAyUb6Jg+lSrwpOJwWQPlLjQ7/+gyylc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e5221b0b-74243868-c0d3-4a2b-a00c-afa08a299795-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdcab30a504f7cae519042accbde5625dff1c1ce4934ca34fcc2ec12f37af399
Date: Sat, 21 May 2022 05:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653111659
