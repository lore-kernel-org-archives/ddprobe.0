Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C8723B5
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 12:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652186699;
	h=To:Subject:From:Message-Id:Date;
	bh=06v7JX8CPMvNMHzqpSoBBEmJ/7TSSeqxKp7FycRjOk4=;
	b=RDipzBq2zQUFkN3+lI09zCm3nTbCWH/mYVcLsVuUw6mk0XvYpLUpyocgkyevWENd
	zPlXrwg9dVbX97vmBWWcQQmOZanThA3H/HlP6uKS/KXR29VFhv2bM192tN/bVB+6SbU
	aoB7ktMzeK/Q4lFrjCi5vKcGdhoUyQnVHYUiKeRA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652186699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=06v7JX8CPMvNMHzqpSoBBEmJ/7TSSeqxKp7FycRjOk4=;
	b=FQN3j3Z69KVE4SiGcQUlM4BmGlT7d+L/rJLEDy8B0QcrK9gz2pR2kcC2T/1/Exdz
	CxTNQbONy6evLUjk+tQ2DpEmzy7p/1xw/HqNIP9p7AIh1/G+QjpVdvdUqPGopDutJ2p
	rYBtyPVeUgAS84ilvu8BKTe+gFsneqLrpACCSrok=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ae00563d-f69fc695-5f72-4a3c-813a-645c7e0e29b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a1734c6a847d7a939b77d1629f08eeb188c5701828b6d9cc83d8fd4f9f65075
Date: Tue, 10 May 2022 12:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652186699
