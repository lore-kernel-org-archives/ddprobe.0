Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBF81360
	for <ddprobe@lists.linux.dev>; Fri, 29 Jul 2022 11:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659093652;
	h=To:Subject:From:Message-Id:Date;
	bh=G80EuTCyXPVVmCtu+BgjtSd5rySN5bjAmWsrIFjBLGo=;
	b=Epqyy6Ok/pFrEA+figeVmTn7UhORQOuE0KTui/OHSAB8LF9LNbVo+bhp7LnFV/6V
	4BBvLHFCfh/Nb9CikPdV8cR/fbd4XlYyeLYNmU+zANzhpAscxpTJEzufhnkF3Wtv2F0
	nU6VuWw+4yzTgWaBxlOvKyiTUblE5Y2VZ43TeNpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659093652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=G80EuTCyXPVVmCtu+BgjtSd5rySN5bjAmWsrIFjBLGo=;
	b=C1hywYV662tEZpUhMfIgyUIIs8XFgOFEhu35zVtxkEvQUB1ncXZWGDzOPYzdA4sd
	wGB12+wsTfdtm4rNmX1zPuEJX3RF53yrxVRRg8zNb48Xh8zKLqYYHM5CbFsvrrGZGr9
	G4/bzx4JSWmOaXdUOiq2W31ky8FDVZxJpdMolAwk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018249b0143b-6cd6483a-1b0b-4f92-9034-8d6385670d35-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 208e0c032b7382140933b920e503e5818161cfb0d0fbe4edfa94b9bdff49b2ed
Date: Fri, 29 Jul 2022 11:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.29-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659093652
