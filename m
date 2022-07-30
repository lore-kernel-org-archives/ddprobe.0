Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A5A1FA0
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659186652;
	h=To:Subject:From:Message-Id:Date;
	bh=dFAGlcy+C+IWz6kbR+ahNyGXdEJ5r3jgokmfr1xPyMk=;
	b=DoG6oVp4j+V/VDi3Y+czNi2zaabM+w2AN3IJeDAXV8l+ZPM69nFd8w8qdliy8DOp
	USmdvc7l/Qmw0to3//TE+55XvX6j0LFZ5UFRmMOXq/l+Fv4o5DrCLCGWpMYL8wypy7b
	wXzMVbc01j98EnJpmoQCNCaiD9xS/m7sxx7vWJek=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659186652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dFAGlcy+C+IWz6kbR+ahNyGXdEJ5r3jgokmfr1xPyMk=;
	b=aoJnPzmmz+QFzcPDJaMdwPmxgDLwSuHf0LUKkTRfjitgdmV1L3uYwT5yA8s2tTvD
	DYUOPkjQM35dpl/3AiD1iVSoOQsytNRPweqam6uQvHMVo312xnHu+dnIJ/br1T6FOfd
	2on5FcPNKQY/+5qvNuFnVvu8ffzPlKzbkN6vWmvY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824f3b257f-63afdbe5-984b-4e5f-b98a-adb8ad03efb4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: abb362e628da54f2092e09bb7a36e15306d5e97b0e4065dad5df93fcb42f4069
Date: Sat, 30 Jul 2022 13:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659186652
