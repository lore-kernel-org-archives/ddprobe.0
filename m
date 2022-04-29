Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426617B
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 14:05:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651241158;
	h=To:Subject:From:Message-Id:Date;
	bh=EnM16jqCtgfxbF4fTKMs2rvG+D4VOIZU6ek6x0lxEU0=;
	b=ZHfBPaK8KampT98X3jqPNBj5XRmWAfP0LOFXBTmeOrOdrmdsS2VE7tGohpA1wVty
	V50HQZ88RGuNPMqCAMoUIjfcqUqXnW2GGQ++Ri7EHqSXmFUZ9pz/vdBoZCtVboJL6b8
	MEW/Qa9u1UQrqdBvOKze98nzSvHZSbxHhugSjaEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651241158;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EnM16jqCtgfxbF4fTKMs2rvG+D4VOIZU6ek6x0lxEU0=;
	b=fiK2OtaEBO64LYw82ZFbCj8xPQZCeKFlIx4G+EkQuDomb7c0g3qoCca6GcElZgfJ
	cwdP44ykyXhEY5vss1CEWyGBHIkPrlVdL9sH+IXj1qlI/OAUR+VfkoN4L1X4u9xGPHw
	lr2Bz4wRrzaDXwCRHpnYp7Dq0Op7AbYfdBGRujzw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018075a486b2-29350b18-83e6-46d3-b96a-a50efde07ce8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e17f66833c27e275ab3dcbd5a0933f348fce4f917db8692f676b42d6c73ce9dd
Date: Fri, 29 Apr 2022 14:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651241158
