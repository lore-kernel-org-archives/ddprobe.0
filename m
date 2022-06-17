Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E842F291F
	for <ddprobe@lists.linux.dev>; Fri, 17 Jun 2022 09:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655458379;
	h=To:Subject:From:Message-Id:Date;
	bh=CP3NT8nfaKCvFgKlxjukjRnvLOEjAmeHuubLksCJ6x0=;
	b=UH+zYB/AlaOf0kyT5+ted5bBhCV/CoZsOKr3OP7mzyZoN10+xXcyOcU6rBIguCdl
	IkcXd1EdC0Sa2AAx5TrkIm+GVt7H0S6sdFzSCx7epNORgM5ePUc0rfdpP2Z2v23Q8Ty
	ASmiq+pnNghnH1S6aBwNOiou52uo2m56pD4Zhve0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655458379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CP3NT8nfaKCvFgKlxjukjRnvLOEjAmeHuubLksCJ6x0=;
	b=Kwvyzk2vKPcEJC/tZztWpU0czYlMkyPCVJYsxSQx/BqtpZQ35EztKY8kZBeOJRho
	Y3Vjc2J2vD82m/VtqYQeKkjCyXOHmUBcuDucqPHMFbxXQC/PsJFDf5YInSB8z1yXiy4
	1QRPhZ+3gHi6u0q+f0A4ohnYqYQiub7E55Vk7qhI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181710235d8-49ad1d58-7a79-4e76-98ce-1c81460eba78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2dc5a99cf4b23d1ed44ac3953fe1fbaacf689ec7908f41091fd1d963636281a6
Date: Fri, 17 Jun 2022 09:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655458378
