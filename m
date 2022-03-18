Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D0D2F2D
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647592585;
	h=To:Subject:From:Message-Id:Date;
	bh=GvOHCz2cLh0Tf41YqlW76NUhWaVfH4sTELf7OGfPwk0=;
	b=e53YpRXsPah0AS2jNWLubSk5Ag5xdky01HIfaI4LfXHIMrZ4jw8eIkjTPuKOXi27
	CWcrbqDmFxNPiIidBJEklKit4TcCTiqAvsxO0x2Sbs4aRMLfUU7GU/6mNd0p4VhlcYg
	nImvufDZXDkkpfUzeTWq4DfQXN3AUTvX0EoazdfY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647592585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GvOHCz2cLh0Tf41YqlW76NUhWaVfH4sTELf7OGfPwk0=;
	b=XXwWcO5Ho2QcA1iAob7+vE2HljW4S8WHi7Qz+zNubEz9nlUh1fyzO/YfDK1O5xvA
	y7QZHBq+CC8jd/iYhpByODFxMdrq+ErCxVo+HRW9zQ2wuwzeJ6DLaqI89x/YxesbVC9
	s/al21sHI+FNz9TcgbcZnsgDed/wqvA+zsVtWKgU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c2bb636-19693a65-1601-4961-a394-3b87bc2c6616-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 23892972fe3a47fd8f8241fdfbda8769afcae2e4c2fde76974faacd691926aa0
Date: Fri, 18 Mar 2022 08:36:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647592584
