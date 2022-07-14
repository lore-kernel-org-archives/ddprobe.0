Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240A37A
	for <ddprobe@lists.linux.dev>; Thu, 14 Jul 2022 05:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657775212;
	h=To:Subject:From:Message-Id:Date;
	bh=/I+K5JGnUN4k1SswJmUTJjc4y5BEmaXcHVtcTTavl8U=;
	b=jTUQEmfXcPW91Mz3mpKDNZC8jliZbl75VwsfYhjt60NVIVTQGwy0g8nU3EOSsCU8
	eJRw9FqXNO2o+XUP20qilN78mDYiYZHdOD2RyrDYWA58G1ErHr35K2DaRTos6l4CO4H
	6Aj8TgYowaFKyr6lyq8xHKaUPt8mmKNuk8Pod8kg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657775212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/I+K5JGnUN4k1SswJmUTJjc4y5BEmaXcHVtcTTavl8U=;
	b=eY/xyAAXW9NkQbN8T+LJJY/dhEWvP6q2fn0HmKb2XBp22oor4UmeMITNB5E/yLjL
	3N91hmTOSF3ksrWY6TxIU+2PZjm9Um4E14NbWYLO49hlbPh19dC1mN4ioCCJQ32s1u6
	QmlLGceJdfT8b8KyCrDp3IF/Ll6KXZJMbp0GQFkw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181fb1a473c-fded95ce-9d3e-4ce3-b492-1d34c1e8b4f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99886c870440eaaf38ddcdc5c6cc0e4562bbac5a5986878dcb0a14f476c9095d
Date: Thu, 14 Jul 2022 05:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657775212
