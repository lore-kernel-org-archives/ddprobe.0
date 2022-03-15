Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72F6223CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647367884;
	h=To:Subject:From:Message-Id:Date;
	bh=+gb/6TV3ZxXmDkW/22gBZon4gQvcb/XVMuMu3L75A1w=;
	b=hoL3qlhGHP4HvcNpKoKwVpxAWzcYHQxE0/SWerFBUVbzD/R1d+dPfnBm5umN6UzT
	fqK+fdl8wsXvlxfbTF83av5CIXd0+EH8i9TfUIGD+NWPgPzg+eQ8Q977qYJsTPJqzGL
	A2cYRiV53JF2Olg4Sw+8XzYMDsJxJXFsjtI/bBto=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647367884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+gb/6TV3ZxXmDkW/22gBZon4gQvcb/XVMuMu3L75A1w=;
	b=L/pADMIMhYp3Ehv5l/UM1nbktlWHlR+tFvnpQ53uFPUkFGV8GrzcDRPM1BiUuyh7
	M/+1sCQZfDrbcnJcZEgbPT+8G86q2DzzMzC+PbldhNvMKbWCVUslstbxTaaZyfOOiP4
	2+mJB7eDjHzlWR64LRBJ7GQByVYkxWYSZqWYLzFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ec70fd6-d5f5d4d4-f51e-445d-bd2b-324cc2fdae80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f5ff4f4ffb672085fb5ae88a9bd4d9990a3d9d4394204996a384a93922340ea
Date: Tue, 15 Mar 2022 18:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647367884
