Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40D6186A
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 01:37:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648949878;
	h=To:Subject:From:Message-Id:Date;
	bh=e+rcWzaZvWsphmG7Nt3ufSPUw25MPja7rt6veknEpGA=;
	b=RwDgplvxenIYAQNMesxaAjl12IiuWcBp4l0obNyPomO/js02G5IiDddlIbg4R1My
	zcbfYGEJ8IVnRDLrPgnU7zY2L/XDrBXfSbQ0tJzY4RtQTyWCcolZ5ZTqDsWvA7Pny1P
	vh5MyC9GQCuFqmPK31bq4C4b7aEiv4TDna7FNLx0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648949878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e+rcWzaZvWsphmG7Nt3ufSPUw25MPja7rt6veknEpGA=;
	b=DPbzcwPlhj9aHBPV1tROck7lA84XtScEkwefQUcFdReXKQD4DlTqVV8L0SmdCJAA
	RIp3iKpDYjwd3dTGSmY4mDqLwfb8l9FNUH6smNag8nNwYXLLPc6o7UUUb0/1X0GXvBk
	mQVX1CxIMX5z7pOkJeFB9tRpYURKmXcX+3NFR0I0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed125dd5-7bc20b27-8d0b-4d6c-9aea-86ad293aa081-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 296fe0aeca779ac13367ca622a63c744dc6e4e3b0536e143c740067e1c1de1cd
Date: Sun, 3 Apr 2022 01:37:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648949878
