Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0DE246A2
	for <ddprobe@lists.linux.dev>; Wed,  6 Jul 2022 12:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657109812;
	h=To:Subject:From:Message-Id:Date;
	bh=wFhN3wbl7B6505V9UxpBXUkJZ6lIpMXfL9ZsTU/YH+4=;
	b=hB5z2wIR1VGMYiawTqHDkwuhXytUPFQW0sjigiSNFNoMOwkEtq4ebpAGA1LKi91N
	7yrF7mzRmpgAiBbP0Ldzc1woy27lJr02OaMqjFcpMM6ZDCHjaIMBzNourHiEmUpU7op
	sK1r+yYg00/UuD2InoG03woIiVCYWT1paTSdqwdE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657109812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wFhN3wbl7B6505V9UxpBXUkJZ6lIpMXfL9ZsTU/YH+4=;
	b=QdktGqtnpqW5y3rm6/Itm+XXWySB6Ie08NyJ/4nBiimoH3aIRuN2A+QkRIrIwddg
	RSpzmV+aXvBN/KqXbdvydqSzvTnPgSiBGET5sKh9l+iCCzju3dWeiykC38XfXTepWW2
	qZrnyS8YuJQxfoqVNLWDNkaDUul93hzxes0xBcYQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181d3711420-7a6a7b0b-0610-4190-94f3-20e166f8e02c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b24463655869c832fc1dc28f68471a32edd46a3ca5480ee6b9046cd76c3c7f70
Date: Wed, 6 Jul 2022 12:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.06-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657109812
