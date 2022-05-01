Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F4C23D4
	for <ddprobe@lists.linux.dev>; Sun,  1 May 2022 09:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651398718;
	h=To:Subject:From:Message-Id:Date;
	bh=7xncr2umg5Jg66T1oj7bBbzs9mp/39aZBWbLeC79vzg=;
	b=ai7Sdx34lhkItu/1GMQ52eZ6dX2M5LPECUXZ5mVzkJZa5Vu6PiiVksVLgUPMOyNl
	DokpfyNlE2EU/x6kL1INrzD0nRuyEU+HcYLYDaaTU+EC+H+WCsNxmZZiv7P7xX/PHNI
	WfOvcdjczZfrJh6MV3U+5tKdNgXxaey+DZnmVY18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651398718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7xncr2umg5Jg66T1oj7bBbzs9mp/39aZBWbLeC79vzg=;
	b=eu6lypQAvyo0EZDmvspn0JquwzUdxSIdDQJJ3HwYK6Y+p/G8Kvtc5qLEER1assA1
	KxgWE3U8tIZMwYUMF6ijwkMO4oRVff08kdK2qKCMcNRnhMI7TSFI9rPMNrTFUqahSIR
	f4IP7XfGoTQ+eEU/3v24DWyhecbUaqHJwM81s8/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807f08b35b-67d232f2-c456-4961-ab59-1e6cf63d4c4f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2f23151b78d8f69dc471d9b6f6510a962673d9226ffce843bdf1f86e59ec3ce
Date: Sun, 1 May 2022 09:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651398718
