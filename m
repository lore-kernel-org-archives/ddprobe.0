Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA293C1E
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656689812;
	h=To:Subject:From:Message-Id:Date;
	bh=XmCVGY1QS+sV5dTC5gvj8gkzqIDrS2RCxk0rmNuD7Ok=;
	b=K5YhDO3PRuGyKBPCWJu1KdWztXeOf97uOuFdsTT0f7HRgv3bL7iWoKMLRm4r196s
	dMLIQl8HCrmvpZ7yQbjlWH0lL4fF2ClxcKNURzvoBkeHPkmxDX+lPbbeoK1pFWHeoYc
	T0EskLXX07SkX2Qy2uR7aA6c/3jvjY8oLWjV6Uy4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656689812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XmCVGY1QS+sV5dTC5gvj8gkzqIDrS2RCxk0rmNuD7Ok=;
	b=LPtVG9s0ofKwNJFCbmwGjEoF3DYTmVm1z0a35A8hlW9vb936JvbjvnW+QgeQpMEU
	b5D7uY36nRzQsDT82bHkBB/9sKwZxZqpCycr4sfjOwTCu/DrvIri40AJr2FErydK2NX
	lmRHrHdwU7hqd4+lLx70LkEvMxeO1pAgjPVKEJ1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ba68631e-4e9dc353-2d3a-4b4e-926c-1646fb7d4a60-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1773a956447153a638bc64666f252c52766fc51daffbc0321ae2fdccbfd2d20f
Date: Fri, 1 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656689812
