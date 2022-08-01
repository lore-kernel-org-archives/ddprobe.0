Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687957F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 10:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659349852;
	h=To:Subject:From:Message-Id:Date;
	bh=90dTsNJYZEYYcdnaoCZ3cn9OZr60cKh4bAauDR3R/N4=;
	b=dJNtqj3nyKXOmPLKnOmDnIO0ZwVCWNrh/fXcFUEwKOjGUy0Tn1mkP/UJQZaYpXsC
	bEcAO9xU/UU2KrqVlN9ujrvJu8fy8ANVf5EM4NXknN9kK8IEseqSkPMWKjGLl3njWa4
	unwbRppK+nSad2sYphE87BQvZyd/kLEbv/G1ccBY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659349852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=90dTsNJYZEYYcdnaoCZ3cn9OZr60cKh4bAauDR3R/N4=;
	b=OrfN7HbC3jxDMWJJIeMuUj3QK83vqn44Gs9b0hVxkz5El4I1E6D1Cpg1Hjs4CzSh
	uSHkDZkgsHcMwMoA0Tng4p5gbHTBPubHRuAcrI4viVm3IEW2ET7Fib5FTobUWOu5Ye5
	rwsTZjHINPQq8Eut5N9WDfcHw+bikPUZKEsAGgKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018258f56190-62725986-aabe-4c57-8d35-338fd2de86b6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2b283b907690e789e783525d75533ee5afe3c560317f84b2f8b2ac684076841b
Date: Mon, 1 Aug 2022 10:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659349852
