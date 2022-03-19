Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8093A160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647720384;
	h=To:Subject:From:Message-Id:Date;
	bh=13srduhRY2OhgyDpC2TcB6/z6GtJmKtwaMyKLipFq1E=;
	b=EgSkKtnggCYQ2TuLTPN65mflZJvrEyk5UhRou9oWCPM8WANBQxKO67zpAOMcIery
	hLYHKh4JnWYxlTtCvN5UlQhKe/Uc/zHG2cc6KsR5EgEbtNabm/lkWJf+jtbwji8tVaD
	pPX9qiOLt/UWmQHKqNLV8SMYPrcJiihlH0vNT2Ik=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647720384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=13srduhRY2OhgyDpC2TcB6/z6GtJmKtwaMyKLipFq1E=;
	b=fWFsdcmn7piDsW8ihDyDfNfFpfVpuMR4qRd6wyMvoTK0ipiW2gHBVe5NEdvO+Ykv
	CF0qrXNga1xgdlwb6QT7JvoaT4Wsf32HtpoFMmKE40+dW4MeXR2HthLDZ/Qw4JqOw0w
	Qg6RzQUwFo3y9+P3oM5Im6YzvfvHVZW4ucRAgXHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3c9c967-f234f909-9600-4c6b-a5aa-c72556b7e1bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c976e3594324950eb4e3099698e39b9d0eafdaee17532ba24f6555064a1ff60f
Date: Sat, 19 Mar 2022 20:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647720384
