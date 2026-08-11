Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A598E31B833
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786425034; cv=none; b=nxFulV4jlDAkzN8nM8hNkWiBrzQQuCA6Yel0EUr+LdQgakVOkGBFu1eynm7oJi4rXsl2+egpumCXjJM4GhknCzKDf/tNWxVaWoRp3t0kNSLhssE33ZrBIyPOFgo8NWx2kmEYA+6jJhR4hcXdieivysL56fZ3uGcCetnnx9t826A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786425034; c=relaxed/simple;
	bh=QDVGVBLSTYe38QRDYqp8fzsd1B1L97FI7mu3d2uSfP4=;
	h=To:Subject:From:Message-Id:Date; b=HoqlCINkpteseTU6Co/pNnNMw7QazLwGTtlWaUQw9MQq8DXAUyzuwjoxO8gUtdrHNger1Oz2qaCkBGaMJiXGwvp+4bNhZmWFgR/wa/FqhzAENNqY8YZo64vo8XBQjsc55YMjOOWAWa/E84kGd9nnSqd9qEWvW6RhD6AVIeRP47Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkKHit+Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkKHit+Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D6FC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786425033;
	bh=QDVGVBLSTYe38QRDYqp8fzsd1B1L97FI7mu3d2uSfP4=;
	h=To:Subject:From:Date:From;
	b=UkKHit+YCkMA5jusMGZcPPPOEndIrHxy7ZL7/Sfa5AsWtJSntis7s9LHrBX9hw3ue
	 N/lZ/M4vf+Ssvfoq0WsNjnBMHf1mlpY7cmp1TV/ebiYlC0g0dRJZR8xiohaRxwZ5Pf
	 TGLWzKt2/qfjrpj13frcosd0lN7WfhAZiT2vw/YaN7SHuK8tNpGcOvcU1eXB9VPyOE
	 xXHT/WDV67tIYc9z7keHM4YDDz0KBrH1WQupkeqJ3K4wZPqLcLyOqIEOWH98X1/P7u
	 47H+iJseQHRitlO6gygzK0rTz2+NlwL33NscMXSEDJKD3/ruOeiOKHX8yqay85xzlc
	 IkPBg3A7WiyVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A83C3C5AD55
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178642503368.14618.5041159415331707488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 135a7f0602bd7fd91f449575961756dd66bb44446c812777f4171d1af1f90529
Date: Tue, 11 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786425033
