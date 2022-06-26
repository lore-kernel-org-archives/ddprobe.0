Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D777A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 12:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656246412;
	h=To:Subject:From:Message-Id:Date;
	bh=eOy/vsEiXKnXLC20RPj5AS+hLF+CWl830up/b4h/8Yc=;
	b=f8L2H9utXa5PGgHInXCnBICg4SUvtJ4rAr0TDGCOlpjAuBp3ixIkfW4uc6Y5v2ki
	X5cfsl52xK1tJIzxx+nYpemk3UY0W1ceowyxcZ02xo959nxP7HM+/qRxWy0M2RoHaHZ
	rXfa+Q5XijRs+OBk59QIe2gubjQY1pSajsPdx0C4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656246412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eOy/vsEiXKnXLC20RPj5AS+hLF+CWl830up/b4h/8Yc=;
	b=T7SobCOVtvf1hRTLaVfwgRh2WCzYXVw5BW2MIr6EgXH/Ury0ciFrIMXnLzeOKenD
	eREVi6JrjBVrLdsZuGIGrorimGgW/pWtvHIHCK2f9TD+NDXZAkx2kPnrPxcragiirV7
	pjcS0t50hjYmoKmZt43vq380gVkBWJCYGZWcicXM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819ffaa414-6de21663-5ae3-4167-831f-525ee42a92aa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a66f0a78bc28259a1c4291b42a93ed76b23f11069aff60e09ca829a91649a327
Date: Sun, 26 Jun 2022 12:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656246412
