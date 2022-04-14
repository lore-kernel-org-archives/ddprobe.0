Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48E3615A7
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 02:43:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649904238;
	h=To:Subject:From:Message-Id:Date;
	bh=bpjBsvSXdSYrjd9+fxktrUxOQjQbWiQ692cPuFMDw70=;
	b=FFHQdQjNLFxlAJVPqe2nQDloHJ6Leyf3Mc9iF+5AJvKThiv2Wl19OGv1/n2AE/4H
	s35jS+745kl6aR8L5O8PCEEsRwaPeiB/U3gTAfCbXC9raT2s+QGk0IlDhha3IYGGKX/
	EvikWHA/B4GkhFs9vzpFdynPyMV+PaMNlU1EMYGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649904238;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bpjBsvSXdSYrjd9+fxktrUxOQjQbWiQ692cPuFMDw70=;
	b=jd/xEQcjUubwc5sEd+ThueG8d1mVejFZix1KGDYjqKx4NLgq7SHH6LhgPY4I04oo
	0sH4w+X5v+Uu/Xnb8u6jTrOA+urD2k4iidLa5wyNYy0RhfhmbpAPCI4FUxavTT5Jlxz
	JGK32OkY4+tRHMLuDZuvWHlXuF8X5sWDkABVO68c=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018025f4bea2-b11a22a1-913d-4e10-8891-55803da1a6b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 226f1dc3b198680d7aeb8abc774d5b72929211ed9c6f43a7527dba83d59643d5
Date: Thu, 14 Apr 2022 02:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649904238
