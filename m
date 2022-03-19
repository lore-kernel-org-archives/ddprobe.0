Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A70C160
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 19:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647718584;
	h=To:Subject:From:Message-Id:Date;
	bh=b/+utu83+awJlD3a5lTe7t1JeiFmWJVEl76Ws4Kuq1k=;
	b=fBrPi8OMPtDt9sca9lzEPjtZziDlgpU4CGABBrE68FC7k2hZnQ7Sg7xbLsizbRTX
	QmAq8sEXAhj8Lr37ciPQVxZxSWObbIfmTovzOvsnukM2NWWvlAcjUNaBWPWe4ZJNG1i
	CibBpqv+Ppy4eKWrsVGWatSeYJt6mWwU3I/2py70=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647718584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=b/+utu83+awJlD3a5lTe7t1JeiFmWJVEl76Ws4Kuq1k=;
	b=UU/2U5YZ8Dnnd9HGI9syFWBAaNyS+x/ZCl822h1XppV5vdhvfTVmA9+yFuKaFDep
	83u6Fad9OTGf0M/B3JXzATTK2J8qYHMT2OCnpRxIaPRAHZC580xYCblz01oMQJoI7u0
	kzKjE4/KiQQyBpEqkfF4OgjF0xHe3hTgzd6Fths4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3ae5181-661436cd-6afc-4d02-9e6b-fff8a7515014-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d22e2fdeaf76e1cb47be1672776a743228aec1a29e0b81908ec9d86177490711
Date: Sat, 19 Mar 2022 19:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647718584
