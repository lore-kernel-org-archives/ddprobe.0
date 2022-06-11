Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFFC804
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 23:19:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654989599;
	h=To:Subject:From:Message-Id:Date;
	bh=MqNytvHlQ+CH5sNIpjfYApedJVm1Ovv34w0KE6NLhSY=;
	b=BXO530RvYNRPZ9uju7jhBO4c3VmSnzxTGUUk5r8S2l484KgM4LhWCy63sTlGxJxB
	9/8sAGpCZG1phVjlHWoqVL84Mt1gjMeVLPX8AI6CRwdwM0qp1Cbsbzr/sZM8R7009gF
	MHFPb3mi8TJWcYgmb+3dqpVCsBrlBWo8K8jrw+Qc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654989599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MqNytvHlQ+CH5sNIpjfYApedJVm1Ovv34w0KE6NLhSY=;
	b=SS5HrpIpSbgCMPq6ORjy6r33OZLQLPa46Pm41n+6krNbUx0Ek9txA8YBuWnwPfiL
	JC0JaEIO6ICb6kSDWZAueVWnrusk6RG1FTpAyG/Yp92hiu02p7tSYhO3S7auO8njDM9
	M6hZl5uXSqblrdy2RPFLVvGuvIA01iwo50K1NEPY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815511324d-7156d057-8ac3-4620-8c74-193a603e08dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6ffd3626c1d6aba6c6ab1a441f3e34d17a1c33e066bd3d1ca399c4298e9cf6f5
Date: Sat, 11 Jun 2022 23:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654989599
