Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 232192100
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 10:20:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649326858;
	h=To:Subject:From:Message-Id:Date;
	bh=0t9q1PF4Vr4t1ZRIArXJdnhl2IwbtdXUdUmyQi5Wgso=;
	b=LQ4/t9Rb823HRoO90S2k7lIHHBqTJKGE9F5OCY564U5JwYbxX2571jMyvtLpxmgQ
	8kHh1KRmKIkX11bmhNygUgBo15DqIJdAwKs5QtUR7BGbB/aUysYAFcoGxBNjhwk8vce
	pn/rkOHL3tTHMt+/WOsc7K/JQDGhKXKaT7oGbscA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649326858;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0t9q1PF4Vr4t1ZRIArXJdnhl2IwbtdXUdUmyQi5Wgso=;
	b=BeEiGzttlltOYfH0cU9CgsreKznvnWoqNSdqku3HQG67hyekdF78Qu0wUA0hgO+i
	DoAvmwruotba7kvi1ZWIwjgHzzmo0dl+bs6u/io6Ao/bBGj4agIFtPPc/Jtyd5c5zkA
	WzVJgBeepQaQjaowOAQCE/4rWrq1NG3iaSOR12V8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180038a9ff6-473570d4-79b3-4214-b19a-b1daf21d759e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cba111583c1924bcc9d1c3a48ce00f38529054dd2b3d1062aa49f47ba51fc24b
Date: Thu, 7 Apr 2022 10:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649326858
