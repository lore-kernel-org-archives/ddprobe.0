Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF07A33C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 18:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645467385;
	h=To:Subject:From:Message-Id:Date;
	bh=TdUMtoxrRD4AP7SYgs3bcrQgDMgsrvi8zzk2Wm3IAzk=;
	b=dBM5BVdZvQ7T2z0HgNRu/1PtmsZXFD2TzXrs3uXtxuL5CiXzyDKWDSpOGstXpQ4e
	t98UxynU4gXau2Mr7ZLC+EtsIOpwq5ZT3If82bAPcbkZxigzEcLSaxlFdPU67N1Bmea
	NBr1E1nwCGHzWRcvAjjC7MrS5BZtz417br780SnQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645467385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TdUMtoxrRD4AP7SYgs3bcrQgDMgsrvi8zzk2Wm3IAzk=;
	b=TqJHbKHDLlo+vTdvAduhzH3RHma0XoXwab8fHiQ+Jhm2CCZEw5xIBZh7k1RYQ8iE
	0CqZ52MvekvvWF21uzKFgsxMQ9GYt7f+F8J+h9rqsnOwfvZVkcJnDJ3BCezsZQjiv2u
	iRmyy3KIB8Em1ESob7jb6205wBfoWFB43CrzuUzM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1d7fbbdc-607c24c2-0f9a-4443-ae4d-399fe7ca0035-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bca24954f4e7ecd95eac1f9c549d14e3249ce2679cf35cc4fd13363554fd458b
Date: Mon, 21 Feb 2022 18:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645467384
