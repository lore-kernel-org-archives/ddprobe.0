Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17DE81C04
	for <ddprobe@lists.linux.dev>; Sun, 10 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657474612;
	h=To:Subject:From:Message-Id:Date;
	bh=3XYjnHFoIXbR+r3a6llFaczyAkoZRlypA31VYHTGz48=;
	b=TSHOF8K1oJv6yLKWkvV/WbVSIVM2CjSacJOBIPeOdX1zEAO3Oa4o5ImaU8pIfFe+
	pADAogMPjPaG6I6PedHocpfDJ6L3L/p3SCTf90Zcz7rWPoN+fcOSr+flFh+BDym9VBW
	UIBYTmhc+7RP5Eow4KrMYOh6Ggaj00y/qHEUN5w4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657474612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3XYjnHFoIXbR+r3a6llFaczyAkoZRlypA31VYHTGz48=;
	b=Et841tBy533X4j3TshtMJ+cImP0AYAxFPg2jzGvjVwjJ5LnqZcikQsQ6g/vrWUvh
	XrFMs9GtbxHSMvD9HuQuNKIc10VxMt85YTNo5yvkUdWiiqm/zAIwDjKVcSo9TzIYn+I
	kfSiSfkaLSR/FI0+R4FBCLmUI312GoUpgR7WidkA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181e92f7c3c-8aa47907-26b4-4cf0-865c-ca3b1983cbef-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 475759646efa1343ea8a6433c8a2eb0b32c23583c70a3973958310a77a355994
Date: Sun, 10 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657474612
