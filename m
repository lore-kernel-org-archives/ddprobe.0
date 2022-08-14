Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F631A3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 05:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660456252;
	h=To:Subject:From:Message-Id:Date;
	bh=9zkJMg7mpzg+pBDIKcbtVu2KVqFpMGSlH7GUPjseFX8=;
	b=JGCOawY4C5AkY73Pnnk1EhjAP9zJL7e1sD+r+gK9G191H8i6pRjsNLWNLYBIT3Ka
	Swm1Za1LqN8RBw/c/W9ZhVzwyMU4NXXR1Q/9VlU2EtYTtanqwgKu/Bnls5csMhSopAx
	RpUzOyQFJODm4S+BMV57M0MyECsZeCbPojy9ipB8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660456252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9zkJMg7mpzg+pBDIKcbtVu2KVqFpMGSlH7GUPjseFX8=;
	b=SAUwD/OTSjR334vWK5FwmyjWDvDnYTNnlG3N+wZNSSml0GNmjcd0AAl5dDsZ30Gy
	efiQOm23eAVTb/CkONnukL5SNGR+oT/jhiztgD8FaFe6T1gx1ac6qqHGIBlSWvRrjFu
	4nmotQ2EpwtmhoULtTLPknRimSXs2XzE0kmVyNUI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829ae7b48a-5bbd0d16-ff29-4378-8b5e-f946ca8cf244-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f52b0cf6b75933e1b08f9bdaf67efc87b37e33835972c624a304bcf222e67bf4
Date: Sun, 14 Aug 2022 05:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660456252
