Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 908F8320E
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 22:11:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654639859;
	h=To:Subject:From:Message-Id:Date;
	bh=GjZpTbrsMEieTFvOEAC/RL6Gs0amFbGxYCgiHA65Flo=;
	b=EJPfCd9DkjpZp8WwbY/o5zC2Z94XC4n4iQfPK5pIgxSrtSKxyYpk11IEae3Y3+EO
	cpI7ozzcZQ3z4ra0t0g70oznftT3ieyRvI9/aWmrneykins+X7j7gUzWGg5Uyi7qOI5
	NyV/e5O1dNrZ3yvrdZI+oNVGdDPAOHsLMeJaE4Ow=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654639859;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GjZpTbrsMEieTFvOEAC/RL6Gs0amFbGxYCgiHA65Flo=;
	b=WUK2HcXL29DkmLCw5t3175GZPaSv1iqZDB4+0USEnQvEgqDHE4Tqynm+mNIkTBIj
	6/mZGzKARZccXC396gXU8jd7m70Tst5ptixz+slTg749irzgA88nRv1TTd2pc8SlHwn
	p3ncQlVbPmNNKOYU2wqQ238bDvByIClPjm343wnY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018140389642-6342d2d6-e181-4346-b67f-779f03fb35d2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e3c452914a84fe557d30075bd826eb0ddb3f529c0ada30bf174945e83ed3624
Date: Tue, 7 Jun 2022 22:10:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654639859
