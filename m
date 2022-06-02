Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29FF43D86
	for <ddprobe@lists.linux.dev>; Thu,  2 Jun 2022 22:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654207799;
	h=To:Subject:From:Message-Id:Date;
	bh=bgjX7a6Is/Hscphlt7AJJVs8qkGevyPDs3ZZA96GBlg=;
	b=b9HAIFfEZ9KV3vmXER1E3Az1rh///ctRrbz284HAXuHlOiUNUQl8iUQ1BpPV0CiL
	s8cSSnnrbgd8di7lSgGAwCMtcErGR8t8QFCBDijq5R0OUPFsukInlPvwWrFuqnuirl0
	SlfvGHByaL54P4PbgzSfjEEWYKYm5FJRImxlooDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654207799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bgjX7a6Is/Hscphlt7AJJVs8qkGevyPDs3ZZA96GBlg=;
	b=TxB98USkW4JUOb/dPMUQwxUB/rj1Fmz18ZFKJoy50eJa81FQrPJixHfa+tfqb/+B
	02pEant+OFy5SEo1otS1fZi37qdh5NmwKNMZXa5U6CGBo4M0Ut7k/2AgyFUq6St74ad
	88NalC9k9GJDWvxoYeh9d/uN/+OFw1YA10bDs1hc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101812677dfe7-4a22f938-51a3-46a6-a005-63674293066d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b20100a16878ba673aec6409e1702b9cae70629c7ec3758b27e1d6ad35a7415e
Date: Thu, 2 Jun 2022 22:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.02-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654207799
