Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 262BE65B
	for <ddprobe@lists.linux.dev>; Fri,  8 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657258612;
	h=To:Subject:From:Message-Id:Date;
	bh=WIQ22EaLLSZb0G3wfeDQqY/QOEP0ov2cRTHFcHFcueQ=;
	b=CY1vYI51CVLUMCU/LTBTOpbukSIRexlIyKyMkGKeGQ3HCClA9NMvLyuToHlJTsYt
	yTcV9/prlqgTiAAH37psyPUSh180R2MhuImuY5LwJOKRrBiNApw85RTFVwNfXFjfCKY
	SpCf5xA+smukshKdzwKspZ0Hm1ytJMNwB7aUYL3o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657258612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WIQ22EaLLSZb0G3wfeDQqY/QOEP0ov2cRTHFcHFcueQ=;
	b=WwRH0Dkcnva3KDK8KeObh+EJz+IpwPUYf0OHJn8bxjcrNbI43fmHBB/wXSEH2nz0
	WyjhUk7OZjwhirQ89TNZXztKvAR/0J2bP6G2ZEamBoGzWqlfwpFMJZNiTt4vbup1v9e
	j8lR4EcBLP4Dfs4UjG57XkoRN6tOKHlmayWXFA84=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181dc4f9690-7fb562a3-d0c2-4a58-a354-c079fe10b52f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9605fcf518ea0856c5a31fd3bd292513fae796ed203a13b6a111a20109b38b64
Date: Fri, 8 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657258612
