Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD9763D
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 12:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654085759;
	h=To:Subject:From:Message-Id:Date;
	bh=MpFNV/hHx9gCJAvJVm4YHXuuOHHqCtMpgTCC21VSCJY=;
	b=XxQnu3nv9WlhaJJDQ6TFASdRjJs5gpnry7CiZQa+eYq2/trxG2nXT2VIMebBEwHw
	6uMfDsQR8L9mghQyEgNCeElqyDt6cfkLae2r4EMmk1Ql2262frzVn3jrDepr3PpCG22
	GrFm3tQaVIoqhvbs5QSJAUveQbD9tp0FCEqt309Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654085759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MpFNV/hHx9gCJAvJVm4YHXuuOHHqCtMpgTCC21VSCJY=;
	b=TYltNyWooJvFwfAztL+gBL9nANEr4ErEaJ0EALTHDl12h+pBLOZWT1e/SEnpGzy/
	I8NBNYj3NwdyVWurNXjZkDm1usGQrpM3SmiXgrfqQVL4dPs32wDriEZXU0BQ7Bnv3Zf
	ILkfisU3tpWliqyWyagRCTOLkHnvOcQ69eJ1QHAE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811f31b15d-40766c14-903c-4e40-83c7-db02af2e8a0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fe82007f5bd98db955a018fdaadb462e63626e7573f44ae47562a6977f548936
Date: Wed, 1 Jun 2022 12:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654085759
