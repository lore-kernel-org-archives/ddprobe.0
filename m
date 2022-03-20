Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EE77180
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647758184;
	h=To:Subject:From:Message-Id:Date;
	bh=8wasuL5BEmoS6eKVvhBEpIUoyjvdXoeu4vyAut0xEuY=;
	b=WLzNmLoQFoIwbstUiXPR3TqPS+1YBQ2h4Tw5QCsU5Sr56gB//gUKTUFSAzr5fJJX
	NQICzVEsATqxcfO4MtuB7e3Glb67qIHTSt3ot7NSi2t5jnQUpJICaCBFF3ZyHTv457R
	KY/px4eIY0kMaEbB3au6o+lFAhIX1bhiszZgwDE4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647758184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8wasuL5BEmoS6eKVvhBEpIUoyjvdXoeu4vyAut0xEuY=;
	b=NdEFR1uP181BC3v/6HMQnu5E1/mSAfLn+Tmf+xfQcsIqrhJNO6bF3mD5cRuAHzPo
	FZDs/IR48D+Uq5bH3y/nQHqaTXJFqbtKUORnjsS3jz//ra4U+gMilJsAYoJJ+rTubTM
	dbWgRxypgsxTmK6OU0vxyVY0n0oKMOFbFxBBb5A8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa60a916a-c1535b67-f7ea-4d70-96a7-ed40937c9dc1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fd797633dae1637a9fb7bd4a45a99ec38467af344d3faeeba17dcfbd159a35af
Date: Sun, 20 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647758184
