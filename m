Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED685EA9
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 13:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649596078;
	h=To:Subject:From:Message-Id:Date;
	bh=RgBFBnyLHk6p41CyTs21U10Sra7X6PyTHkCwAGIuLIQ=;
	b=Ejw5nI8YGYeLLG0RKH4kuJB/kGXPc03p2lS6z1/mg37W48GBCX4d6+dUcpI+TTCm
	MKqeh0IZszPXqm5DABWvuk6lo/J3VzksFIgm7hvOfG41QnA2s8tMFD05mMUu80NbpOB
	MZdZ4iQvSwJWtCyqtPRYeCK1tmeSgQw/6eam74iw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649596078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RgBFBnyLHk6p41CyTs21U10Sra7X6PyTHkCwAGIuLIQ=;
	b=HHnBIoKdjyoLlChcuZ3hPZXVl3NMC0eu9fTVctJubsVQkvenC47i0W1P1Vrnbk7S
	akFaTXqbLdBBS8JMAUec4Mll3vKyb7QNAbQWB2+2odgwlrui4k6Y57c8ncHxqZZXahL
	cIsqPzH4tHO0ZP5kYxF52N16Cmto4btHKtV7WCQw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180139698d4-4d7d9a1f-e4d6-47aa-b2bd-3f2c797147aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd317e56c3558b7f9b09fedb4d95f6cdb009c7e268383b449a9a81b61c57dafc
Date: Sun, 10 Apr 2022 13:07:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649596078
