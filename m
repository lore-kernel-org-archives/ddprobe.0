Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 404F315A5
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 09:00:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651482058;
	h=To:Subject:From:Message-Id:Date;
	bh=M4FklPRM3nmMIOSIbopQ1+Q2I/+LQ3VaNBkZIKs4R4g=;
	b=VEeSWSji0cPKj23/RfiVTv97gAyY2p5JxfqU6NuVSxrBQ1cFEKoNyVrAss91OsVl
	frQkJd90OXuE/iAaF6nq7FhIzvt0UGkYt3eRoc3C+PKhxPniTenkIzCiNYNex16+Blo
	mG0qduhUGII8BQqNOVk66LrTi12zVy2S5hBc6Dzs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651482058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=M4FklPRM3nmMIOSIbopQ1+Q2I/+LQ3VaNBkZIKs4R4g=;
	b=Tu1zfC+ZEyTVKWfDdo1wX/REvqc3cXSK6Gylh7AEpVOsOzFfG1xErsWKmISSDJgu
	OzvZxVAicWWh6+tsSwKRtDOpkIZ2Gcvx3UyrHTOnb0D64T+i/qM7yovSiZpHLBs8lb+
	ohR3a3fy3QAUxsWZRzaNmrdyfpSj7OsmXP1jP4kc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018084005e4b-2788ab9e-7d76-4539-9611-b6b0badde21f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b7aeacf659f51286d857aacd86c0a28167d5845cda48cdbc067c397dd80c153d
Date: Mon, 2 May 2022 09:00:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651482058
