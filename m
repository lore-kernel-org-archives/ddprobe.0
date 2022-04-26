Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FE72F4C
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 22:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651013098;
	h=To:Subject:From:Message-Id:Date;
	bh=X0+DdZTGmXCXN7f2bhtdISIBrcLTqg0Upkxk5ahTAHo=;
	b=WYbOLAK86j/XvPU3n6i3zJtPVEvDH6DUWViUYT7orb/WlyO9RnsbA4MrI+xdxrSV
	kQ5GzPlUVK/X9cFDK76BAutwiTl1kba0SCnvVb4XsBe5G6O7kC0qvRNDHrv3YIfOtpg
	thpDDFnAF2KrpA7sYsSbaqcCckK7y8mxkRM41DiY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651013098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X0+DdZTGmXCXN7f2bhtdISIBrcLTqg0Upkxk5ahTAHo=;
	b=b89VGdUnvtCCZhiGSf5hZEraIPURSoxwCtbg8exOHLb8uTh6OsOqz5+/fpKPQ1rI
	yKlwOR32jZ1F1rvQRWY4GyzzjyMBmY9Z6yed+08wh3UvIstOIvccn1xd8mj7bB+dm4L
	8B26+2A/JBA2b32Vm83VyAiNHUfxnAXJUMdoRrBo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180680c9b48-a310c705-6bd5-4988-97f4-0a8855ef752a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1cc38573a77b557e47541eefb1250b0b968ba5ae51da0553551af1e439d5d1e6
Date: Tue, 26 Apr 2022 22:44:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651013098
