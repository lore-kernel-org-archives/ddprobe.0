Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69CD87E
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647241284;
	h=To:Subject:From:Message-Id:Date;
	bh=j6X5wi8wzu8OtY40yPbgtD9OLRca5RJ/DraZZYuVI9U=;
	b=CnqbeO6UwvjVmI6ZhpnpAe/LGD2UqpWu3INKEkh1pnGwp3q+1YIjUKniuJRRP2Ga
	CdjsofVHijY2PylTVj0XB1Ic0TqOFqz6V4JxC9bGgFLHQtNpPgxKolO7cIov8davWwn
	pyhBZD9ysil/OcU30Buuz4K+CvqtJwm4hq2OuPnY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647241284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=j6X5wi8wzu8OtY40yPbgtD9OLRca5RJ/DraZZYuVI9U=;
	b=Ox+Iu1HehYJeW4on3rMGglCpnsjBkWykV+5XAEtQAqCCdN2un6UgVykE97MPYjN2
	sFzi/OvXKE7BAJn3VmXje1P/1rErN4FMwv1nHKN7L+Y7VSWkPTvXmdRTWJ32RyKN91J
	BUhuXarEvG5sIUGBw0QsxocxW6Y+0/1fazbEC+T0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f873b4cce-3c6c31c6-1537-41c7-818d-e8f95cbe9a0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ae35fb3a5cb72961bbe151498f047631753551da37ba615a875f6049e961de35
Date: Mon, 14 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647241284
