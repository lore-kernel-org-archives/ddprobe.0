Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B027EC2
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 01:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656638812;
	h=To:Subject:From:Message-Id:Date;
	bh=AruAqNxdwowHw7YwVgA7KnWaBCavsrvtfLPnC3VnbRc=;
	b=JRP6AuhhyGQAVhE1Nvrb7u1pgFNSmhPmi9dKvcOxvegcLw57YmphYIfIcU/I3QJj
	S3nTA6c+s/eIBfCP9l47pgpQSHT1P+zYC9Fg7z3Upk6DQavcPsKoePs11F/r8KQIabb
	mE3DtQw+MdHr8w+xlbqhtFrTZmqBvjRzwfxRD+xc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656638812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AruAqNxdwowHw7YwVgA7KnWaBCavsrvtfLPnC3VnbRc=;
	b=T8fRMugVl0Oyzlp2tcytxA/VeJNmW55qraRHWI4vbDesb9N7vIj4WaqbFnX6wKcy
	w81vHjnnoIgNuIdIEr3ZcEHjzvUnoaKTRhYLhAePNS74FGL+AcfuMs1Yke9EYa7rzNZ
	f8PzObYZKM3fXuuIqfbxMuJjniTykMLqsiQ/ZFf8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b75e30af-c77d1093-f0ff-4e02-b05c-2c92597d7c05-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7cad4d6b94a8de04729fd8add774bc16e2a743a98dcffaedc6fbcdf243d26ae
Date: Fri, 1 Jul 2022 01:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656638812
