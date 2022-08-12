Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7201F36C
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660270852;
	h=To:Subject:From:Message-Id:Date;
	bh=XhDyczQjtTyvgYIELk7i8l6Y1x1+2HudpKZZNx+TfOQ=;
	b=W32uE+FJ5rMsRqWy/zETO9EV4V9knKMGXsil2QWlSAIYa+MDRk6CNf/IRltwyfdr
	RqWmZ+MD2yCpRU6qTifiUsdxZSYZNlUG5+ABvSGdKnpslSSHgr7kGjNgXxTv3+tjUN8
	xWysTUWoUBlDHzE9xgWRTs/bb3roDhdQzaW3X2eQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660270852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XhDyczQjtTyvgYIELk7i8l6Y1x1+2HudpKZZNx+TfOQ=;
	b=VV+0ElL3QBhLMoB0Th14HEQTgaf+ww7ATLpKJDrLVO0ucD9zdX0heJZga4Plec0j
	L3+qEC7ryX2ZYGc/3hjK5H5Sccp2X60eeFOA1ylwj70dW6pZYItN5l8lviT6YNHgiTi
	Me2Gqo9xPcmduvKsIx1FQRMicJvaqobo5HEF+S7I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828fdaba3b-88081228-349e-456c-a3be-70eb4245bba1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab4707a1a65517565120a611746ed41e5f63c5cf0ea233cbc42108448a040bc2
Date: Fri, 12 Aug 2022 02:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660270852
