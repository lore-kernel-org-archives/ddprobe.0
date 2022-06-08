Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147067B
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 03:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654657979;
	h=To:Subject:From:Message-Id:Date;
	bh=4qbinZqu2aIcVNFnqVdlvntdDPgZmyxfOE7KUst87m0=;
	b=CdoMPnDTMi9/K/K5HzMMa5FNkYL44eFQcuKikX+WenVCPgJDJAGq27/fFr2lOoCf
	yXcLEVq2+HLAGKKI+7qEIOOqbvcu48QebujrggReBElJW6V465cPnYQAn48Msh0Lsvn
	iG9+ccP1mlVkkUDjDXUXyXrZ+7scfw70NcpsDvLc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654657979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4qbinZqu2aIcVNFnqVdlvntdDPgZmyxfOE7KUst87m0=;
	b=NHhAic0XLsqD0TGlpdmW2n/68EGbo+C3g//RRnLkOGr9LHz9HyZyT7k0DuyCWpMw
	Xpd4zowOCngjj30K/JXscFikWpcsh7Kt6lNjxDI61Q9YMubWIqz0ibWNUFgEjjoddA8
	Z/Iate2RoXV8lK5JxA89Xkf39iog7INU820yX9t4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181414d137a-4ed43792-0598-449f-9b7e-1ede725f0205-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b2760a541d69d54772599d7c62e22f54cbe5999f35e86b117c287efb1aa266ec
Date: Wed, 8 Jun 2022 03:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654657979
