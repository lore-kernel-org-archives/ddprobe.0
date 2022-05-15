Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5ACCA49
	for <ddprobe@lists.linux.dev>; Sun, 15 May 2022 16:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652631119;
	h=To:Subject:From:Message-Id:Date;
	bh=reUSEfok1aHHwZFQrJaDrh0DwZKuajb4ZA0sv1LTEyA=;
	b=CfJ53e6xaEdPozz0o1JVWXobp6mfmvUImssT84b0EQAGgHOwBAMciahLOmjI2sYx
	wScP2Lj7IS8ZnO0i4Vm4SSrFdU8UBzrWAWpga4VD4wTp1HR3h1Irl57wcK23u35VIi4
	eyO6JtXis8dEyu0gZlObT+Y2KrQ9SXTg4Ot9noF4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652631119;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=reUSEfok1aHHwZFQrJaDrh0DwZKuajb4ZA0sv1LTEyA=;
	b=BHUW5oDIO4lW9tBUbemcaNRMcbd1avfnhcCgmHcEBmcVc7nh2i+DUD5fRcLsF7jW
	/iI2wOWFmCzHYHQcQZ6z6S4EkP0UTeTEfsRhEngR7MovN913ijSSsJx6Gc+qUEzaIeP
	nBsk7HUDm5zlBkWqMFkRhcNAJtqrCYNf1yBO/BJ8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180c87da597-92d9f148-d29c-4440-8575-dc10d84cb788-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c29426ba900e03152fd880e71d4f6af718f66db4420668b7a8f9d7da49daddb
Date: Sun, 15 May 2022 16:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652631119
