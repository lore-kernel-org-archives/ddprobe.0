Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C01B75
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 08:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647332784;
	h=To:Subject:From:Message-Id:Date;
	bh=k+4E0iCmlKE68Vud+5TiY5iUlrvxCzdswlq3axL/zUA=;
	b=Dyfp4si/BWy1ozsSuGRiBwbF4/g4PtCTALYTm6TAicd2FHXoLGnsIMG+K8sbfrTh
	neXyHtl9sswGlLxzs2mGg8ty2Srqh6FxanaGwp3j6UW0qCz6g8K8librjGleDf9jpMh
	9kKDKO70dPiV7VKmlZ46o9UL74/eJKJoscH3cj/o=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647332784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=k+4E0iCmlKE68Vud+5TiY5iUlrvxCzdswlq3axL/zUA=;
	b=flFq3P/ZZQwsBzLUCBqK/a2O/C0NbB1EXFn+4gGvoDc3OqUkoMdEX2AJi8H3fiPt
	4aBnzVFTIN443nTW7hfPkMBY2nmnGOh2G0JIKQM/jylVAqKLk+zE8fvS2GXSPYFDfho
	AhnndFbb4tAqWMwjQOEk7WyPI2Gvbo6D9az1TNXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8caf7a99-231973d6-8b6d-40b2-b40f-5ac2e6693433-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a71c14e0e13658cf376d06d23b77df6571b0ad02bcbfce156df54b8c0c554dd9
Date: Tue, 15 Mar 2022 08:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647332784
