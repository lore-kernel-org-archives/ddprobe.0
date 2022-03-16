Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B381F2FB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 20:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647464185;
	h=To:Subject:From:Message-Id:Date;
	bh=NkU8AmFNAJC9BHc/77rEOiDjSLs0er/Tk1/uPvnP7O4=;
	b=BtjECpfbtqIcCZxz0+GHpt5DLoD17xnn2e51qcSoTdwdE5La1KjwjWBUGPRO8vYI
	rXzWwaY2xJmsg/GI+Bmt/dDBHrKvcVKcFhCg8za7SltyA8p4UvGqOzdn3FV4YntmLWt
	+i8MgF0lWFZRxYX6gdhCrHK0otaW4fMLElALv3Ak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647464185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NkU8AmFNAJC9BHc/77rEOiDjSLs0er/Tk1/uPvnP7O4=;
	b=CROoRQfYFa7Paf9V1zDYjWObfHq0W4r5JFE0ueSPhmShGN6yfDPUTMWVUbES0Sao
	txSH3nL47JiM+lpMpshnuXKaElxKRVnLp3u23++n4h+zw0qFGWz/6tTF8TcAng771CI
	nMgSMaLx3FILy2lPIHWX0xyHDaCjgQgYXhkK73bA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f94847bf5-9f410a6f-4abb-4f66-822c-58b78363249d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af775ce29a1e0f290b1df00b91477a6ccba19c5b82d466c49345de7255ad3337
Date: Wed, 16 Mar 2022 20:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647464184
