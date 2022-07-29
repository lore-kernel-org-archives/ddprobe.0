Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3819B110C
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 18:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659119452;
	h=To:Subject:From:Message-Id:Date;
	bh=yHkyDTojAECrzbduRptPToa6EYReMTXsFBoe+Y0JeWM=;
	b=ZEcHKa8LOy9MjlaS9DNLbnxvDX7yIgL+epf2ciim5tgkZtv5QVa7HLIFhbc8anjt
	7jb6MJcF78d9+QUCLcwswDarA/NZiRpNmsG/YbQ3jOD0XktORjKb+XgZCkW66Sl55Py
	/9El4jHo23TQs/Z0Ff79A9PutEOI8wneoDeBX8+Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659119452;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=yHkyDTojAECrzbduRptPToa6EYReMTXsFBoe+Y0JeWM=;
	b=I9noKPToKR3kTGzPSMgWxn+PEjOSJLBwhXWGS34NiAgAS+MEiXm6tb55FI8G1/0I
	BtFayrSbnYVi5gKT3WYNsFNJDYjcPraQT3mZg1w/9/cC6D0zw15Qil06gOe/W6Bk6GE
	ZBpC0LGZpGIj8JhD/VhC6lm5vckgtAvYR9tiaufo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824b39c181-249cfcb3-f806-46ad-8646-4567ebd3194b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93588683f0a9b226c08099c1f66b99df551c8fb36313ecd64ba1f2f54a6c0454
Date: Fri, 29 Jul 2022 18:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659119452
