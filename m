Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB3457F
	for <ddprobe@lists.linux.dev>; Tue,  2 Aug 2022 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659400853;
	h=To:Subject:From:Message-Id:Date;
	bh=6x1yw7kIA36ZTQ76Pnsbif1xxETg1Ta6AjKRU5dbzxk=;
	b=S1NbiasB65IvonTy4MwGZROqKFM8OVc1lwuA9e+qKz5/8lBOEvrOrVERXI3R+5/o
	Al1+7jSQdEMImUNsnA38pw/ax8TtSRhWDn/wUonHqThgk49tFtTh8XkBC1hpTIHMgdJ
	TH/S8+HMnssPGcdAHpwDLkqmA8ad2bcuc21ZY7D8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659400853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6x1yw7kIA36ZTQ76Pnsbif1xxETg1Ta6AjKRU5dbzxk=;
	b=F1AugrKwOIhRarV4NCwa/Ae1RCIxBSt9p6kJ5Nmc7ET9BWZrdIo8nGZ36pIqvlzE
	9lxNOdk0pqk0xzrwur4Dy2DUXbxu1Hl9+tCnDNRwb59Q8Kr83jmhT8OwMUJykx2qjpK
	ot5Wn8ylPEhlR4lonyvR+lG3BjrLpbMnQHidnhx8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825bff9491-bc531007-a877-40fc-a8a0-8f0e20de1f56-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 369a8c44d0284cb53ab144806e2ceee2df82785d0780f9c102842b6e8fc0c19b
Date: Tue, 2 Aug 2022 00:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659400852
