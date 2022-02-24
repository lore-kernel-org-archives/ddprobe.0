Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE2C77B
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 00:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645663285;
	h=To:Subject:From:Message-Id:Date;
	bh=CGHVB59lOgI0xNfT+YTC7yT7oX4s+wMNgkvSH/Dn0+c=;
	b=mU7LiMvJcRFJa5FUA0NX6ayPDHTY02+f+iNjR/xdQHfWp1UnoGbglDtbmE2C0ytx
	PTOFjqzR8Q630A5qMNeNAGBwt2C7Uf3U3FqWj5RGzU0KfGEznb49eXfzw73x7KrjNC1
	cu4JJAIY5DOny3Pkf/WSZuPqDL7IS4KcmMXjkB9s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645663285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CGHVB59lOgI0xNfT+YTC7yT7oX4s+wMNgkvSH/Dn0+c=;
	b=mH7RyuYhgM0XiKlMChgJR38Yoj9MZIXeINdvBUmkDK7wZ10GQ4HilOBaelssjLg+
	CqwtIDzei5mldxubiwA/CvwmaWy4zkSWODa7DiZhOCIin+FLyKB6ETmzXUHLNcyOKHb
	btLdRZKLT33JDQry6fFx2Azp2kSbHGuGdN8anji4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f292cee53-e3cf7e3a-dab4-4168-bed6-b1f71f1d26e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 15fcde099ebd9c39963905a08d48eaeda4afacefe5312c256628a5935ee4323e
Date: Thu, 24 Feb 2022 00:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645663284
