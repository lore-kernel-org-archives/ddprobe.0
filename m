Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9B110F2
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 02:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652063098;
	h=To:Subject:From:Message-Id:Date;
	bh=ZR6xtd/FDJvb3SvoAjFKunZKQcUgVYSfQmqLAV4VbZY=;
	b=RkU24neTeJENXZmIW4NjvdkJA8CewUAzQk5IeJOtOxggVuHwbvLHvIRxon8wj1rK
	qP/OSvfjYUc9vstKG3W0sDrvFxG93+OoH+eTCE02iwQqWdX0OJ+f8zkPZMlFgvr4X6n
	TpJH4njinsMhx5hD8lSq1BGsYrp7oB+e2nQMl0OE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652063098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZR6xtd/FDJvb3SvoAjFKunZKQcUgVYSfQmqLAV4VbZY=;
	b=kK0zxxGvJmm9FxbQcBuH414Dp722I5AmjxGrDm08YHBCsrJqlJ2HR+TmPgmJa6Lo
	5c+N9uTgprlR+yrU6R8pLUOFDufsaaNhD11wwLjEvzltfStRVZ7+9OBLtuL6AywHk/p
	LrWLddtqqS1IvLWkkf+ZcdlXzb00mWnccM2d7SGI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a6a255a0-4bd5a83b-2538-473e-b2e2-8ec2f4417f9e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5dd9a50c312e2a8d7064bf30fa2ba0cf92d5ba063bdcebbce63a8b9645592139
Date: Mon, 9 May 2022 02:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652063098
