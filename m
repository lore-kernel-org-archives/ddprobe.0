Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 698B815AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647573084;
	h=To:Subject:From:Message-Id:Date;
	bh=zXXrEBBe4xwUyTR/lmTtTCDAsj2ANm8lr6AfRWB7R7g=;
	b=MDWeBFhlBrh9MzHreyFW/pMdQDqmp1klrS4umexZmpCNMa2455xuBw49g15Sqo/1
	F1eM911vNenPAtp1c1B+bgqJJ5py+5UP9RFy9BPeRM1rW/OWCFF/pb7Vzuk1fTT1V7U
	FjWhq3GDZjvb3Nxfcu5hRRZw/joyWAg59gVq0qjQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647573084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zXXrEBBe4xwUyTR/lmTtTCDAsj2ANm8lr6AfRWB7R7g=;
	b=VHFa9/99hrZ3IlR4y8LasemEHouA79ODK2LZmjvn8c6bzKXeLiTXjwTqwdzZrJ8K
	uDtps8ndKW4NCtroQg3Wqsy8Xm9LeExjXGBTlj6tKPnipeSLX8wcx8zhNZQEvVgGa8i
	8veSPb7FeV3zJiLA3+4BN5kG04muzNZv5wgg5Euo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b022a50-c5022db6-0b22-47a8-bcc3-14c9e19b0fc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: df864693fb9d1ceee108fcd809b22e4312e38b065b5be7210eb3e18ed8130138
Date: Fri, 18 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647573084
