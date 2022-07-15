Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE2C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 03:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657855012;
	h=To:Subject:From:Message-Id:Date;
	bh=2bbPYyvKXeSBVRYqwFAR0fpJVjc06uW8BNWuyHrTOks=;
	b=BdtAw4dcapSwir1t/CN25mqPL9SQfCxPN5TlxlMxz2qpPT2IQq6fTuPgXfm7ECmG
	TIo0ppvPZ8t8W6MB9Eh0oyHqtcQ2CQEHugC+iQk8Hpf5DeY7o+lKp9ABUL/UkYFarI/
	ha9CnqGb++HNa67OVp3qpiJp1BOVWXTgLXuVOGX0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657855012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=2bbPYyvKXeSBVRYqwFAR0fpJVjc06uW8BNWuyHrTOks=;
	b=Hd3RGd7WRtpUbH3Hyd7SDl29/71DtcLVMW72Ue7n21pLF5Pk8UlRNuRrlVDpwZ/Y
	9vIk0SPQhr8PAIChMifR5nR9W48DkXkh9Hnijvl7ntXQZt35XfngkoaHpe+aQtjl5Ke
	M8Lw+oLK6SzWmDP01QKnjzhUAHf942mVco+x08Tk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ffdbedc2-03751b85-cbc9-4611-98ca-75644fe6b6cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c5e98ccdd8ac4a03b14e5b7c3f97a9c6a315d416351b1c267f0297619ac45a09
Date: Fri, 15 Jul 2022 03:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657855012
