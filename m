Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DDC97E
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660350052;
	h=To:Subject:From:Message-Id:Date;
	bh=RmC3jCFdXVmLLUqj1vLzgW8H/UM5JFBCwuaY5OEMaNY=;
	b=cEyypPm77zj7hTZuduhw1hhVv7IuXV1if2J2+85tUUlFO3YSE/RT0un7ILUF+huI
	W5oMuu4fu4erTDakMayasZsSpuuDHsWmZvn1T4+rGKds5hJC0yQebCUFIgxPt3JwFFd
	F9M+IzPsony5eKczRDSCiJnC6MIVsZRAF8DylTB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660350052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RmC3jCFdXVmLLUqj1vLzgW8H/UM5JFBCwuaY5OEMaNY=;
	b=A9haaFf0SorpR2FdQKx1ZF5srGwwZvvalWUuATVeDVrlXrqTDKirj5FKSM+H1nor
	kLbLpNGOxsnFayzF85s84Wz90dq8ToYTEVdcLp9hEsX+cOHIhtH5p8Ebsj5wJk6siBX
	j4TScZA0FtXlHNPA75RUM252Qvmy7rmeH+dUj1bg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182949338f5-a069c809-af75-4a18-9802-48db50c3cc83-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e6f3ab2441300ec74130a0bffdf3a44eacc8e45616285f1ce0b1cac34bd2962b
Date: Sat, 13 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660350052
