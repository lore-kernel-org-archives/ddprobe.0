Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74B0D180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 11:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647689184;
	h=To:Subject:From:Message-Id:Date;
	bh=xMuh1QGZx+d8tYHC5AY61TexyINUvmohax2qN+LMKHU=;
	b=BwhY2tLhE8d84GRVZ5vV26Vp3FsWjWCsyHsB2vSmLFIORKFvbh3ppvJe3xxKBP7Y
	ZPIcPgItzJ3NSmmzKVmHsd7ojvOo6SVlFsiMjCO6QTjE8hj23UHSr2Z57dR4ySnxQIa
	SEHU71luB1KCuspAeR5A+8lgOr4EDpA60NiopDhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647689184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=xMuh1QGZx+d8tYHC5AY61TexyINUvmohax2qN+LMKHU=;
	b=ZT5m7i78h6ofUYpbMExHZRWGzCBfBNN6flldOf5estHy+uHk/+YTuz1OrTV8VIVo
	Y6uykKHi/Rs2cxFAgAib7IzBQwB+dL9rLOXHm3pWdm6Z+jaDiqlQFHB9U2QM9NWc+lR
	GwNZAD0W0cKJOygncBAyxF9Mzh2x2f18Tpectqg0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1edb60a-be4a35fa-b83f-49ae-9de1-d8413de4a2a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6135de4c88ff3f1c176020dc6e78ccfe7492bd87e8035c5692ecc097afbeff12
Date: Sat, 19 Mar 2022 11:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647689184
