Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441E91FB7
	for <ddprobe@lists.linux.dev>; Fri, 25 Mar 2022 00:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648168318;
	h=To:Subject:From:Message-Id:Date;
	bh=VRRCVQIIIhko18qiYgvlrJQkX84fUFPYkEQ5abBA4Q8=;
	b=VC53HVTOrqs2tZQ/7lURobQUBg3lnDSgiq6AG6xSYD+W37ozGcgkYWg4q/IrPHHv
	Wuc6Q4FcTLFBtNPXswQSRdLtJmqUWAcIhjA6giG8XkFNaipC7hzcuFSaE/ik5+tdsh7
	zHygf2GA7gMN1smQjSyoBzwXGtcP57l769C69POk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648168318;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VRRCVQIIIhko18qiYgvlrJQkX84fUFPYkEQ5abBA4Q8=;
	b=eHXB4E0fjrdRmVvo7kcngwDBCs2TmHliAhn8Yo6t2RgU2jyhjYuZLSDHwC6U9WF1
	RO2OeySRP+xjQosNG5Rqt7aDXXA412cKgP0VrAyDzaMPUXBf3+wdvb9rzQ743gbp+Ae
	xdTRrydLitKY1VAtWlYPXj1KLguZXz3RsPFJx0yY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbe7cb551-359b0d6e-3a02-4612-8cb9-4325a9e1deb0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 98db7bfc72a64e6dbab37dc243ac79412bf12bc9130d6a00784f2305efdde0b1
Date: Fri, 25 Mar 2022 00:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.25-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648168318
