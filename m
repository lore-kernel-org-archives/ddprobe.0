Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75F461FBD
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660318852;
	h=To:Subject:From:Message-Id:Date;
	bh=fV+hDOomUau+STtnLQ+YKuSjQ88B7wNBRXE3fc4ySyM=;
	b=Zg8UXYaCdAOTgmqe7JxeggnA0CRfVUzPqIF70xFNAXoQmtkVFZGt32SaCPLqIrGu
	6XIQP5KmmUEBL8PguBtR0i+1tm8ZMXSVJs797AKO6/oEh+G28rF8d75Nmyf3gqczXVx
	RcAtWvWQIUxrraFT/aSDcP/A0HSFhyxGrkaJDVAo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660318852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fV+hDOomUau+STtnLQ+YKuSjQ88B7wNBRXE3fc4ySyM=;
	b=jadcPY+7PMlMAYQ7o5CNhHYeIDzzAd0hU9vIT8QdToWSu1lQKToSYg8+Rx8vts/A
	XPfTQR0THL983zptr8BVKuepj7tnCQGbxN2f0Y4IcJcG6vdO4JwUUJJRnXrIRivummT
	R0xDqBi3vwdcUuto/hLSyod0AqAycGLCnSVS45jM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018292b725c7-ae0d9c05-43aa-4990-a934-b17650dc9110-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ad7e8ef3d0088f8e16fdc79bda05fe753b069b3f9856e8264e3c7b3a5a01b766
Date: Fri, 12 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660318852
