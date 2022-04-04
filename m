Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A09D2F21
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 13:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649080798;
	h=To:Subject:From:Message-Id:Date;
	bh=o+atCrJbnrEdmBa2gg5s8zNejtz2PBHcvyvk4382Gjk=;
	b=Koh9lENWrt17aFqrjzP/G7zvPwwFhzkIhYOA6jjTqT4xUxIGdtODOq9q8o/qf/yZ
	izE/jpXXrfsNyN4Sh4a8PBsZeicE3uND1AKPsE2EwoWhmM95vmzljXxS79bQuqfm9dC
	dLFPrcsAHSHvtS7+vv7zcX4Qf2h8zPStMPamJD1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649080798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=o+atCrJbnrEdmBa2gg5s8zNejtz2PBHcvyvk4382Gjk=;
	b=NrveTdKKzQvCy/kGxY/VlMYawSRrBxWOf9GA9n0sDtv9j349dNteTfEBV0MvChEz
	Ono3ceTgi2cOk3P4OSkDgGjTyar3MVIDfJH7IMdMjy1r2pGdZO7nX/sKLJDDCJljD+d
	RIJ6eYQUtqwwYmZgBYld+EI4WRQCMTufmXyxEpbM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff4e00c7c-035e45a2-fe1c-4a55-a505-cb0f65bea071-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c88ba52998953c04479d922e21e84bc1e4eee5b8e52f26f352d7f6158a9260e8
Date: Mon, 4 Apr 2022 13:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649080798
