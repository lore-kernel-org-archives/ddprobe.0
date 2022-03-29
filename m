Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D7D02572
	for <ddprobe@lists.linux.dev>; Tue, 29 Mar 2022 15:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648568458;
	h=To:Subject:From:Message-Id:Date;
	bh=ReHuElBddt22XW/iyo3ePVHbOax0pfiy976Wqz7fpaw=;
	b=e7Nar7+QfY1C9HdrhmhDnZT7gsmkIfRKKDAtM1S72tANKEW9Ed49L89AzshYrlT/
	0NeYlb6E/71uNattvDaj09F9Se9RnMgkzB20EmazfF3h5JxZGzVpfqEB0YnRPnoDiPU
	LxF22x8L4osy7XNAxEg1buiYPt6TfU4CI8rgRZU4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648568458;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ReHuElBddt22XW/iyo3ePVHbOax0pfiy976Wqz7fpaw=;
	b=WP7hgcT0edbcd3BlB47E0K+Mcu3UR+1A+md1zqtzLjZ+SUGZUirnDsoJ85sE+ndy
	cbYFK5V/aIy317XJbBxXILgSg1hJs0o2sHDRm5bVrdqPUjMAOIcvBQgqzGNyL5dInjh
	ayuogMGBlxd5KBjl89kf4zT5KOH/wVHQMmWVwcOI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd6565c09-b73b6ce3-4407-4092-aff8-a09ae3a91958-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b0f40389aa0e2f7d3a571551e93161ffc8ee17ddd14019e53fda86c56735999e
Date: Tue, 29 Mar 2022 15:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648568458
