Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5E420328
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728756954; cv=none; b=cMN3YvWMVOFK3Tid44nyDBdqhcoft/q75UarnUUFBDR7/JdPX0cM1Ry0EyrvaNbhEr4lCRwMjxmz1aOw3+ISGv2pWuvY2B/EY+E+LooBOK7c579rv7lqTsW0G9hnqf2RhG0zgyhwl+HaOvvu8jilAAllrkJF8Fes7Oxqz1ZoYCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728756954; c=relaxed/simple;
	bh=Ti5j+C23IRG8i4sE+ORKE74/6vtQet2yDo+OF4Qe5eA=;
	h=To:Subject:From:Message-Id:Date; b=YfLjqH7/EjoseD23TRKXoJdM6BMQx1s6SPgve1xw9r/rUrbRNcsHjNRCeENUlOsFEsHyOHPsEUV+g4EFsTBLrP/LHxE/Fo5Qv/Nz9WGvvulCx7CvrtvOg4exNyPdD/UcUN0Jo2FCs2Ym4HLGHPLBVhPB13X1QtyHIH5JmEP7Xy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfIApTVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfIApTVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24D0C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728756953;
	bh=Ti5j+C23IRG8i4sE+ORKE74/6vtQet2yDo+OF4Qe5eA=;
	h=To:Subject:From:Date:From;
	b=QfIApTVAY48v8FlvKxZ54kOWKaXQQwyxRHQdeB9eQO/dgo+DcduzMXebaA5DT4a29
	 4s6ZLGxh43rVAn4aZ/TuzfpTMPx/+x+Kp5SUxInugp2+I9GSNVcH0ly9IGy6D4Zt4f
	 SX7f+XjtanHJg5UbaDTMZ0ZZ5TbpmsD7xYKsp1kvOFuk9qWq/t0c37PSXu+9BFfn0F
	 a3+YLaZ9nfv71c8QYHBDNSqkiBFcIqOhsNvQQFHGBw/T8vxnVTgS5lG44+iTAC5tR5
	 ZJB6WlH5IFt0QCM876nFDPZ5xpxeAvOWDaCVLn1YpB9Poesklns8tovLru0/g7xK9n
	 mmmUHc+HEIr7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B176CF256A
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172875695360.29902.7132627709038289979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedc1cf13852e52d21bbc6417512dd3cff2004ca554b54dd47e569ebf9eec910
Date: Sat, 12 Oct 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728756953
