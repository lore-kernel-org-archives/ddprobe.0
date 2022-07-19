Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5D653A7
	for <ddprobe@lists.linux.dev>; Tue, 19 Jul 2022 22:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658270212;
	h=To:Subject:From:Message-Id:Date;
	bh=SkJw9x9B4DOz+0HY+sKX7MAFpADBcHCduhKeF2GmpC0=;
	b=ZI4XcGv+ctBN+AW2hHtzmsEzSGw1HmZSrDqzWyJpbDBa/T0Iv0U0nzznOlk73Fts
	WlQoPda+uyEhN5C4N1JRdk+9s01nEL8Gsk82PsLs37N23aTTOoioUTiU9akv12xEN+v
	1Tgbn55wRfeoUgjRHHuMhz4xwdRePendJm3LSelM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658270212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SkJw9x9B4DOz+0HY+sKX7MAFpADBcHCduhKeF2GmpC0=;
	b=Qpf7WIrsyl4TfsgfDYu+Vxu1b9QjQN0LiHCKIrBKZaohgmlmYPxfIXmfI5ysL/xC
	YzH5+YH2FgnSmE92MhsNGyoYDDyyc1FOIiq051eBO14HB5AyYhnGtZxUfbAKTgGXNhj
	2lpc4dBcid3Azu1jSJLPldUrT90nQnOzdMispmdo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182189b60fe-a75828b5-0b79-45db-9c7a-9399d49c654f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ab5493e97cac2f912d3b09ccd4a631daa422fe9ccc9cfd56f100081df84884f
Date: Tue, 19 Jul 2022 22:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658270212
