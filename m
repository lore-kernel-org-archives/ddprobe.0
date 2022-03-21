Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E70536E
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 04:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647837685;
	h=To:Subject:From:Message-Id:Date;
	bh=Uqi/Z5JfkT/eL+jo2zKHyyhYzqIEbNfVZ/xiOd3/hw4=;
	b=NgFt0FvySJIYy83GmJQfuSyyZwMCCLnF2SRAldEA0tka1QieXtAXnutGxP8j/fHw
	KSmClSmcdLUMsQFnspDubQdqVyYfVP3woK8zUk6ZRWcIrnGlbxhc4cI42CNTvbbsLk8
	7MhJBgMjGRo662yJhn5Vut4v8X8/tjlnMYGw+f1c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647837685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Uqi/Z5JfkT/eL+jo2zKHyyhYzqIEbNfVZ/xiOd3/hw4=;
	b=D4jVz5xq2aoZJBXnD1Bc6H4r2y6N+O80ihQMCy3vIrc5Xodib1BnvC3Eu9C2NSQn
	YfmSy3NAlwxA/ZAr7lbPzaT8j4nbvzHpmHHMWIJ4TD7vtF6Hbsfe6s27bW9/eXxke6x
	t7o6ERYhXSL8dtZ4pS283+77T4+AiumLs0mCqaBk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faac7a3f7-d828f0c6-4a3d-40b0-8657-5531adc4cf0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4fc61e143e7c38e9ec61bd5e7f081caa9a71177787258ec4375cfd2362a996cf
Date: Mon, 21 Mar 2022 04:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647837684
