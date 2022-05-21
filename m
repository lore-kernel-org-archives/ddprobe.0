Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162C93218
	for <ddprobe@lists.linux.dev>; Sat, 21 May 2022 18:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653156479;
	h=To:Subject:From:Message-Id:Date;
	bh=iz6qwPswvPA1Ad3c5SLsTA6nodGLVmO7z9R/L+uCmII=;
	b=QMQcHxrJOUjEdeg4+Fl6p0AriZSL1F1tgOtJyDbyN2rTgMPsQoOp/lIkbifM6Opp
	C5o91wb7BQ3xsl2lla6KEtpk8GcJO0Vfplf1wSk/zx5vDkrwghGBXZY7R22Qvv4uNzC
	H7bgwkyS4Z18wwZm8ptI8gj3IfOLF1119X9f2aso=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653156479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iz6qwPswvPA1Ad3c5SLsTA6nodGLVmO7z9R/L+uCmII=;
	b=GtnMSnHrghfL6cNvqPDeS+VfhrHoQL3+PTa+piGWFnxIrySWk8r793r0qBUA2i0D
	jOevhgh9uYD+AaQLeteMgIs6bUsmnFUQAITSSGgsqAFLq/HskJI1wdviC2Jd+M2+R03
	VPeWlXBoRepCpvN8EmDh9T+Hj/pJUiRq6MY8/Qec=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e7ce011d-1523611e-1c98-4323-88bd-6eb8da6bf6cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d4df7ba21ce02fb1778e38000606b2eef62caa6dfd6d8c57b0b31848a286213a
Date: Sat, 21 May 2022 18:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.21-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653156479
