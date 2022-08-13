Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C61780F
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 14:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660399252;
	h=To:Subject:From:Message-Id:Date;
	bh=/ptHZHiS5zi6lDQ5jpDVk9x2IzYuArZaNxVCBYcAlOY=;
	b=AukunAZUap3goSppX2p5XFOCdFAdSwgDjGx84kiXt+36ZTRh48V7TpKirwJB/LCQ
	HQTg+sB7yYN5gHVObH+ML+caTQgOGq9fFt/89JlzM9apqLXQ6pE8SyUhyxwFmfZLdTq
	idMTRx5LN51ebrSSL4jIar+YZLfUu9zygBB9oxPY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660399252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/ptHZHiS5zi6lDQ5jpDVk9x2IzYuArZaNxVCBYcAlOY=;
	b=deLiq0Q+ILPId7uwoVp3b5wpYeAbKK37LfufI5wKaWSfbetCRvJLx3X4m6zBUHvg
	icnXK+N4HY5eYL2ld1YPHeAfveLInfsUCdjg/4Yz6khbCuHXXxDRB7Xk/qZtE+scK7Z
	mORLJ8KNoFrHw19s/g6HMlNX7SXQ2w1Fa8jZG4k4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829781f439-6e78c5fc-d941-42b5-90f1-01607c76f6a3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d0ab087de6102207969843ba94b4497da5508aaaab3aa4826d628c77eeb9e597
Date: Sat, 13 Aug 2022 14:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660399252
