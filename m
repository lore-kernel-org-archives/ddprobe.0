Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7ADFBA4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 07:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660462852;
	h=To:Subject:From:Message-Id:Date;
	bh=BY4G5Rr5RacrG2+/8prqEC/notY5rOgVFZShkqn1las=;
	b=bneo8No6kzgg2qh4aZLp8yjjM6p9u5IEOKmZNVMIzqO/Y6pbkLKaI5YhTKppg3lJ
	Mr/lfE/jr+UU9eDsOcmRV6FykId4QsPtZW/1aJo5DEVYva9gC1e1/Cto4FaIjACjENs
	SB+lHTsNkWPbrF13FXgdwOpsMg6wxiWEeccnGT+o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660462852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BY4G5Rr5RacrG2+/8prqEC/notY5rOgVFZShkqn1las=;
	b=J/8/JqjtqyLNovl56WSGHGxF8N4myoaKS5cGxT0w1tG7Z6szTh5K1hB0zCzvPFpn
	jngr358J9ZRBGY+Asl6ISz6g4FR0DuZwNuEaCYdGcERVYRlKXVvC8Pda7jUCIc2F/KU
	TTW7P/oIPH/NAGgbuYvnoA134P4rzJGEEeT7bwPU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b4c69e1-2cb60be4-9f90-4990-9594-e14b26a89039-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3edf70016d935b2b380503cc269df3db31dfda06729896b1d5012a9a25ced21f
Date: Sun, 14 Aug 2022 07:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660462852
