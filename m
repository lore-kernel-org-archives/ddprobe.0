Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 979FC3202
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 07:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645254685;
	h=To:Subject:From:Message-Id:Date;
	bh=EhDzn8Dq7f67j+CqxjytmssgyDucAijaLBHjz73lYI4=;
	b=fpdyrgZ/p9Ps0WJD6omB67pvsIooIYeeW1geliMGjVF39oUCQyBnhlSapslbhrGG
	iJIrMY3aQpSUzEgOmH/8hqTcYvt0mTMWAso+yYiLdewM41lGo6lKpjN+il6HTH/JHAg
	5E2BjzijPqzpM3DlQg7qlJw+O4TGuLsGesKJlQF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645254685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EhDzn8Dq7f67j+CqxjytmssgyDucAijaLBHjz73lYI4=;
	b=Tht4IeknemzDiCWsE5+TO6pxCNPVuD6cwjYfiLSeSRWZ0u2Iskn9lYpyAhzVXEAa
	6gisGrv0eyLA9RnJqCEIVO725tXcEEUHIQLKXc8vL3BoVsGDlv77ozLb+36D9Zspq9y
	Yg21yyucqpnoDwq+MubKsuOUqEimpn8XIprSW1o8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f10d23068-7b8c07d7-0a77-4a39-bc9d-6d4e36989bba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bfc9a60ad669808c539be971b5ab1e5b46b070a9ddcbc50384882085adc4b4d
Date: Sat, 19 Feb 2022 07:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645254684
