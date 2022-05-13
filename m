Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F822F23
	for <ddprobe@lists.linux.dev>; Fri, 13 May 2022 14:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652452859;
	h=To:Subject:From:Message-Id:Date;
	bh=wdQ51O+wIMMDwriBV5PyLgUlZBOqEhK6qasqixwbxjw=;
	b=WMCVqYTizHo5Zl76UEMI6xC/Mo3TG1OFVi12afsE48ytyt/djbYZ/TVfkO2VB4Uc
	6RmWriMcskcM6mK+BZt0i2eRrbd5ZDDUwi/GvdwALn5mZ1JSaaa5VO3Dwq7/XCZSUF8
	WhfuoAyE9uc/++8bMI+mqy9uWExrem0TiY7ZWWc4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652452859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wdQ51O+wIMMDwriBV5PyLgUlZBOqEhK6qasqixwbxjw=;
	b=VqJBSqZHWZonuNH2fgG0sGyt6hN8Wc+vjanLYJUqWGnkB+3rWlN/7612E9ZOdfRH
	HrCPIGWE+zLSATYHbZ/4j5R93crNlVCZPoWO0DfwiPUNnLjahk2ksiNCPEpwIooyZDy
	jz7BDnyTKRl50MfHwH9DAY+xV7phLtCsjZxoum2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180bddd9d83-804698ea-856b-4967-90f3-f3fb8ff6317e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ea7f48419976f62f030531dfbe21a53696582a076f5dac2ab3b8fedd812c27f3
Date: Fri, 13 May 2022 14:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652452859
