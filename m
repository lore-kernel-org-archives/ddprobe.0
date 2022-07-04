Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D782815A3
	for <ddprobe@lists.linux.dev>; Mon,  4 Jul 2022 06:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656916612;
	h=To:Subject:From:Message-Id:Date;
	bh=SZsb0eoqxJRcQ0N3VWu/VG4i8TS82AK/lsi71iJSmAk=;
	b=bNqvnymdt4kus19rYg2NJdWI7evinD2KEXXHjUc3r596OKBHcEiY8V290AbOm54+
	AS6lDkebW2705Q/SlWATHIRtp7XjLHYAHAMcuPTeLbQEH8yIsTo1++ov7v3HOTCSf5u
	XngKZQvEYiJtCkSHm91j/t5hU/Nk8yncqsR0mHms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656916612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZsb0eoqxJRcQ0N3VWu/VG4i8TS82AK/lsi71iJSmAk=;
	b=USQU7tUYLzT6jIwxRJpRsNMd3oCXvYEKbcJ3/gWZcVhqG+McnqnrwTWPqaCCGcsF
	jrDZlEPEm7pakVouBZGdAeBR4XB0g+/mrExi9VYlZMejkHoGz/5CMEsEzzPL03eP49u
	xLA7rdTRShv3HQIn1ELtVlX/zRHZquZC3o4n6fxs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181c7ed1499-e67044a8-046e-4a0e-8364-60e4c3b2c7ce-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d36898042078dc1a7fa5eeb7e1f365910c2f29ba99072725bddbac89bbf5d5a6
Date: Mon, 4 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656916612
