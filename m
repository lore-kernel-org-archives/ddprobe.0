Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212497C
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 07:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650870238;
	h=To:Subject:From:Message-Id:Date;
	bh=GZR0Fs3XgM3LO4WE2W3NlEz5vINqbbFaXDj5KJsTgbc=;
	b=daTvjBtf7d3lhbI+Um+JvJxQyvhd1jSdvejBT2x6fRUcJj/8DfEUTs/YOGPoi7sc
	iGV53uzesGeR6PSi0O+tZ8Xoq1WLr+XFFQJZMUCKWZ8W5DnOJuuSUpKyZw7+OTaWRmH
	0P4YeovVw9aI4eLnwMwJ+DBLSM5a5Dd8Qjerq2HE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650870238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GZR0Fs3XgM3LO4WE2W3NlEz5vINqbbFaXDj5KJsTgbc=;
	b=DGNv4ygaRH7H8r7XSHm7uEdkmRSigVBZRGtKYvdy9900CzeF9HyRiXHI32y07r4j
	Xb/DqHPJ8JzCucgD40CP6ASXjIYRoA3cxE7IoGUqZ5Bw2smeXE8m+dJmCMksSw74K6Q
	Hi0aLfLsZ6GWjsiSpfin+ET9W1nVo8PYUT+ciKbA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805f88bc25-11f21376-da80-4a01-a8ec-745da6822ee4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a99dee86974237d405499810c6431d9758ebcf7e7af00f1b89b6c4751901b29f
Date: Mon, 25 Apr 2022 07:03:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650870238
