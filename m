Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 779005A0A
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646129184;
	h=To:Subject:From:Message-Id:Date;
	bh=gQssHUKG8qj6PeAmCOkiuBmqbGy9ia2goRg1wV1s4w4=;
	b=lFE+c454PXaheLS2bu81mHGODCS3zBI4sQRpNGcJ91pMyvRE+2/JLRKq0yFaPOs8
	vQQC66YEHnZ/bBvsLGZ5FtpBO4m0rAv4vuF1zoj2/p0U8VvAvJ2Fpg91EMw9sn+aobs
	NERJbEZqRltgc7J7x7wRxTpwLnrvD62Ntk7e2bzA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646129184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gQssHUKG8qj6PeAmCOkiuBmqbGy9ia2goRg1wV1s4w4=;
	b=TOPrPCaUWz0V+hBd/bmjQqVJADbL5vDSF59hRX/iECLsTnIpFpz19FszMv0MAGji
	cpjvfN2dfaepI6EQZs7h9oXW4xm6iRh44ZJGZOJLe103kfEy9ML+quyI1RgYC3DvfbV
	uPcyS04UlIq2qx2YEnVIeZAAEP38crwXijtS1PH0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f44f1ffd2-5fb23002-2093-4c3e-b611-abebbc92886e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4f613dc77b42a57b0cc0ca298ee7fe295f2bfe4c4659ba64e61342879dd772f0
Date: Tue, 1 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646129184
