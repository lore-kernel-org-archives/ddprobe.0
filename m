Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7AC7ED8
	for <ddprobe@lists.linux.dev>; Tue, 19 Apr 2022 11:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650368338;
	h=To:Subject:From:Message-Id:Date;
	bh=e0V9sFIFtMvMX9VXQap1WRAk2IIIZG+61c1PcV8Fzws=;
	b=AjVjWM25nhGsBXTuqzn2HNq/YyGpX8FvEXnZrfPkLbuvAGGgYcAp4vsxvDXAP810
	+6vepPtGheRHdlO4CqpEY04UyD3uQRYL92keP6Ut9yNE3Nr4kn/upepaI1jLuOxXhWE
	0dQhQpCUy/fC0+yIF8lNPl8tl+A+lvQGEX4uw3Ac=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650368338;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e0V9sFIFtMvMX9VXQap1WRAk2IIIZG+61c1PcV8Fzws=;
	b=XowPrvCLEbH2g09QMuFkTG4r502kmprdZTTT9Yit29Khz2Y93C4OpsGvnuh6sTpk
	IohDHX02ExBJy4eXKJ2G9WLLgLUrDaA8zSVoARxDx+z2L2g4PpR6Bt9tOKFfILjcKFO
	GmhFoSmMnvdyoYQSKcGtgN1n7OsGSxcxE89O6Eh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180419e5949-0515baa1-db32-4a1c-8468-a18fe6b4691d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 27c4672272f5e1dacf392e754ce9778f329221477b2f20a4e2bd69e6b21f4148
Date: Tue, 19 Apr 2022 11:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650368338
