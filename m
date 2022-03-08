Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3847A
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 06:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646722284;
	h=To:Subject:From:Message-Id:Date;
	bh=s8OAITvm2DIt134Yo8W2HM4krOTn5j3KsQZ/2uiWDX4=;
	b=NT2WamyJRtG/SUw6rm4SpuYz2oCkaJQOtrLbn6gBe5FEPoTgDRXTgGI4P1upct4f
	KBz7EaosZkK0fLbF8edaof67y08V0PJgu3m/T6RTf0lrdadd0RmFhUpv7WWnhu7OdzW
	V7+GMpIZIAza+qINn1KsciyZ7kxiXt3gQ26mHpNI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646722284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=s8OAITvm2DIt134Yo8W2HM4krOTn5j3KsQZ/2uiWDX4=;
	b=BzJ1U9lsl82xFOK1nBCn6Ftp4MaL92ehilxgyeVazi2WaDgPCmyoDhmSFvW4RPyu
	wMjSdvp4l8gYyM/NBdjWEwCheg3EV+jWhDa/uM5Nj6/LqYPjOjQ64+O43Ryi0knPZMM
	Qc+5IUsSEbO3l9psLqX7CT6/Zl/5yiu+GWtOwFLk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f684bfce1-ee2ee703-2a9b-4363-8feb-ec757b2ef56c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eac890b8f00a40803ff175855933ec7ab0cb2e0d759e6318c7e5f0bdc8aaaad1
Date: Tue, 8 Mar 2022 06:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646722284
