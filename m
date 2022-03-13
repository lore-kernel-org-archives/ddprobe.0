Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674BA62A
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 00:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647132984;
	h=To:Subject:From:Message-Id:Date;
	bh=IBVBs9VlZHBdzwTXrbTIA2gUB+K4Zk0ptValKjWIzhg=;
	b=HJaudQoTfdhOB59UaKRzL0rzVOBC0eMS9j1BxpkCp6DraSf2UP9QYOpoGvO/+ds6
	PZpLf62C2Uu4yoeLiDzn7hULWj2DKCM+xZ572RitR3hta3K4v8hwHbeaaSpu7BzHQmS
	2sMUcI7RvgMwNW5i7A90XheUM/fiCh0KuJP6qrLY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647132984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IBVBs9VlZHBdzwTXrbTIA2gUB+K4Zk0ptValKjWIzhg=;
	b=RcNI6dHkLt2HCp+FD1/iIdgozKcetMXDlXLuxjarVV51yVQiYeDmLR4t/FE/40ZL
	crcCZzqDmjzYjU4DsqUXKGhN4ZVf+fmbFpaeofy3Rk7UFelrEyg8XnNQYkrTJPeky2u
	ihj9+r7PvOG8ihJ4+XD35YNGB/NZb4PPndoFTx44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f80c6c5ae-d59e63fa-ff57-4b7f-8c56-889a0882938a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9016a37afbff5a4322966e02e09a1d344ed6828f72af75a37dd317fecf4b4298
Date: Sun, 13 Mar 2022 00:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647132984
