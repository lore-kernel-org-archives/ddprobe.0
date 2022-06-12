Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 031FF7C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jun 2022 17:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655055179;
	h=To:Subject:From:Message-Id:Date;
	bh=N3dgZSN3groE5EC1TVCNZvWTB54IC/Rm8No/cRxquvw=;
	b=SF+PpexlZfDetEZEVumipIh1qmCqzXRQxFVa/DoWk1GizoJcWBq5SoLQ8daQqz6m
	HsuY0K8tGjE7a3x0x5Gn7YcySuo14qBVJCKV2GLNLWujDoicmXpjgYRXBl5TwRoJyUu
	tCkODz4K9QBwK6Gtl51ZXAdXSXBXge8nORjJS64U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655055179;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N3dgZSN3groE5EC1TVCNZvWTB54IC/Rm8No/cRxquvw=;
	b=bSTPgyoDZ4ZduJ2KGtSDgoPCRvrlcxlGjIvjj/Q5Xhjk8P2kwj63c5jpaXSsEgnM
	DRL/WuiX12803wn28nc8BJZxC+HoqnJXxh4GPK65MSAjZj74/tNUjli55PgcrutH2rL
	EHDOKEpEOUihObEDQklOCVb6ZC2poo8inhOqRzI8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018158f9ddcb-d9ae7b09-5bd6-4220-83db-08d1d58e7ab8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39e576e80bcc0ef5f9ac86a0d842c6e6331ac23873e6e63cb75cafa5ffa4ac07
Date: Sun, 12 Jun 2022 17:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655055179
