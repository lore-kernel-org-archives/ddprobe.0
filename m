Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A31976144
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 20:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647895284;
	h=To:Subject:From:Message-Id:Date;
	bh=36GiRUYmD0z+SgOd00CZKXybqsXhlha8FpZzbbqvOhg=;
	b=lIprbZBOPBFPHJecwh4SDrHdhJ+Wdi1XPWIsaaVKOFibYk78Si8G54LnuIHiHv29
	AexoCOIl3tS4eKszQ71CAU5rbf6ZDaQlH86PCFpGSqq/LI1Zf4k6ZBkZcoQZyjpXYET
	jsM5uWJeNQtqk/aAB0VubdbuMutApBQuwxnK3aKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647895284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=36GiRUYmD0z+SgOd00CZKXybqsXhlha8FpZzbbqvOhg=;
	b=G3jVpFZ8W9WuVNQ66SJaRNvFRnVPlClaLce9tTcKeHqHFXL7w+WhsNfP2iPLBb+x
	KHuJa7wY1RQcbNifnFZzDd21xItSgxHJbKJJrrzTVPpd4jy5UtqSNDUpVtws2egMUkL
	XgY2UDOizJp/FzIeVANS71AzoJv0Z2jRXW7E/Urg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fae368c54-5414e635-0a24-4e66-9ed2-97585ed9d1ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f587fbc117f27b4c962fca870c999b637b05138569eb5c25a9f569d8279abedf
Date: Mon, 21 Mar 2022 20:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647895284
