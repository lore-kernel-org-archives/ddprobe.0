Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 853FA435A
	for <ddprobe@lists.linux.dev>; Mon, 28 Mar 2022 12:16:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648469818;
	h=To:Subject:From:Message-Id:Date;
	bh=USsDpRUrnoiX6TuoRjUvc4qfNdWQobc/QITsjKwp9Sk=;
	b=S0al33+sxBnkximJls6a+AvC8f10XFjzZ2PERRwX3wo1CLnRyWlrYjdHWmbnBu8h
	a1OQ+4V3qBT7Ii4Jwh3esrTStBsah0p8jFAAn5Vnw1jZR9FLld0qTumVj7xvVog+lHC
	CTyL3EhsYWUqtGkTLgnsXNSv5bWoMHMHdpAwXlVI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648469818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=USsDpRUrnoiX6TuoRjUvc4qfNdWQobc/QITsjKwp9Sk=;
	b=JFnWEOR+dgAr85BguwPTxTGNw7lsnjQwsclqYiEYoDo6yMNmaOMJC1A1LjDvRhzf
	vEoa2RFeNtsQNfD70IEmIdzDN/5pAdaA7fTscL08oYRi0z+7GXZ/C57YOpXOBYdanNL
	bKBUxOIfaHUPRPAo2Rj2pCiW0NQCv0REwyk40tjg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd0753bb6-1b904f35-eee2-4bb3-9ac4-dda79e0276df-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b845b81d55e8b8d77374a2060ed4f83ea7a8372b120476de44df2666334a500
Date: Mon, 28 Mar 2022 12:16:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648469818
