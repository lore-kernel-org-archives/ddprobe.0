Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15ABE4A38
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 15:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657812412;
	h=To:Subject:From:Message-Id:Date;
	bh=ekmUNAFow1M1hjDWS8gk6QAzSEecutq/MXAZhEcbOus=;
	b=GTjRQyQ8qxtrjgCa0/L7JHiOBMEpaOMbBnLr+NcaWEGwt2RevROKJ+MIfCTV/hu8
	pOAz11V4ZEQMDzKn9QRDUezL/kvMQH5AOqqldDwbohP+sAaVlCnM5nMDuOBAQ09VsXJ
	czsofC4pEEQDd4EX6ZSI0laZL4EheIHzIG7yXj90=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657812412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ekmUNAFow1M1hjDWS8gk6QAzSEecutq/MXAZhEcbOus=;
	b=DVLx04PCOVIFYUKq8HRk58yF2sLTcAkkruYWHVZ1bHGbAbEUx64mtCX7FxDBV+Af
	i3Ipt0BnaMi6ABt+eU7LzoPLUbX0n3N+9AvAYEsGcqhb5VAwVKj+xMwfaf8AfuidyR1
	snVTxIg6GrsynBYKL/TFOc8LqQ1uzlfycp6vSytQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fd51e780-40f6aceb-c1c7-4d55-b6bd-a01bf0df7d18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6a08daf4125dab5d176b0795a49691bed14821a4f221b89ca8fcafbfd461eb71
Date: Thu, 14 Jul 2022 15:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657812412
