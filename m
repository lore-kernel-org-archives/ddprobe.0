Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 083F77FA
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 10:24:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649499898;
	h=To:Subject:From:Message-Id:Date;
	bh=1lFfUq6Pw4ukN2deeQp5krQ31SalPFa8SVrIVebyv9M=;
	b=JNhdLOB6ZFir6XXlMcLHwHYzkQ5dKXkD3+kFqQwBH/Kdb8HwL8ge3lmw+4Ka3u0W
	A6PeWnQRO/kHC9LrBGs5rw8Du/d5Qe4kbgqPGcQMBgJIB2DxcxPxqHnuPlqbVaw2Rxl
	CR58uJk4ymSNuCFI25FIDqYFZY/IgqWuOeBW1hgM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649499898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1lFfUq6Pw4ukN2deeQp5krQ31SalPFa8SVrIVebyv9M=;
	b=YnIOp5hhM6u91Hj4EABKdpbXHKfDtAfJJ7FbEmSPBgUn6ziVmeJ1czHOqlbAr2tm
	cIrOXuwHOwQRJ68jSDfgRytAjXDKIGb9ULyOvJw6tuXMTqYXUb3bKsslrXei/FREsUV
	5fL2QTnPARcLvf2ynaykYkiyzXXvgHfryzenMgU8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ddb01b1-d7366569-7a37-44df-a68e-edde12061eff-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b46219ea20f2ca03bbacbe211005468ffa1a8e99c02a07d6cb7f308895154972
Date: Sat, 9 Apr 2022 10:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649499898
