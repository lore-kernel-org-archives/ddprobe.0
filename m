Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E244C7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 20:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657916212;
	h=To:Subject:From:Message-Id:Date;
	bh=N02wrgF3khCF5yMFOFBOZUiVDF3fuwI5X8/tvSe1/tc=;
	b=DmjVf0CT34z+hqEbn1Vye5o6C9omGmt84RjvAYkvVaIK8qSb4vWXQ2xvkTgoCq2O
	Klaop/FIQgx+jZowvY770uh8PsSJFu+6eAm2SPi54PjteZ/5EQfEcmm/w4VtOFZYPOg
	cKMOiKC026nEo0Xp2Am9MRKSUZfzXrfEAoOVOD/k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657916212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N02wrgF3khCF5yMFOFBOZUiVDF3fuwI5X8/tvSe1/tc=;
	b=i3k2nEnTMaciqd61MQUzh73KKbyyQzyUxXNYc1CV4zjnyl5KMHZXdOLb/GfqUO/Q
	+42kLBdnyBNRgOzHD44MZwMqT3r+XAXLPnmdNxE862ne8eI8XEXbeX79OQlsX3rYCQx
	QDq4Mir/eCghjARLyViJzp3tmptELo9RciUj9lDo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820381c44a-be39ff05-ba97-41ba-99c2-fb19a81aeac4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dd6ab783e99be371c9175abcf791e94f3a4fc3486114406c3f2afe188b09cbf9
Date: Fri, 15 Jul 2022 20:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657916212
