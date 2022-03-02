Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22B327A
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 14:56:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646232985;
	h=To:Subject:From:Message-Id:Date;
	bh=Jeu2MN4IYDnec7uQtAq1YIB3S+tdHhzdFjGUDCTOY/Y=;
	b=IN0Y87pAQJNz1ebPW8a1DmOHkDxpw+w/Ewkcch8iHKv4Yl+CEwSkdw+xXvcCqC3A
	fqbXjIRw8BD7xJse8tpN3m5t/YwXSPyz888tm2N/Y9Cpoii3Xsk1sc4DZRq8PmoTuMh
	4QAq0P6W5NcyBvVw4nHVgYje1Uq++/chd3l+h2VE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646232985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Jeu2MN4IYDnec7uQtAq1YIB3S+tdHhzdFjGUDCTOY/Y=;
	b=BrZV0Tqr8nob7Pcl+eOsIA3qtZI8kjUD7s/9bbHXSJ551p9JisbyozstDRZ9teIz
	Qu2I4hLgiJ7s0cgCMVIriGGIcta7dFTsACFaTWx7Th1T7Myn9SbUCKGpCDczmNVXW7Z
	KhKnpyd6wFTX10LhatoHW/T7zwr/ulGYblfHqcAg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4b21dcf4-d22f79b4-7e42-4569-bf38-36e235b4484c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 529a481d69f93346f41bc204da2f439c2e2f4c7e28b341e1ac9ee19d52377b1c
Date: Wed, 2 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646232984
