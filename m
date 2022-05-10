Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6133D93
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 22:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652221079;
	h=To:Subject:From:Message-Id:Date;
	bh=3oPXhcRt5gNJtvTSXNDEvUw4zDJe55znT4DoSbtDAMA=;
	b=lKhLNYlCVw+l2w+3nt9iSGQ2hvevVbN//WNqj8hlVLzt9SDmsqlR16q68HsXL3wy
	+j/EoW2LYledNXVAvLqEyIfl4ZpaE5bppfDNy4gZhlxnIgSmIdpex83l0GNV7eYMnzt
	7DzIxrZD3xpDXrAePU8X972G4Z5f8/aii/ygtl3A=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652221079;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3oPXhcRt5gNJtvTSXNDEvUw4zDJe55znT4DoSbtDAMA=;
	b=YE40oLnugA8ixZMKTtB/HpBlrky0vymETGnaYl6VXJVe3rALV4gDoKJrR6pABlUS
	P4AsGyUs4p7EEnzwzT2Zet49jXn8zKN7olLCxTyQMAnArLUUwe0f8X8U8PvDxbHUsaB
	iX942rsW9yCLfy3H6008D0folnKhh5LutC1H7ESI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b00cef10-99eb9800-11e0-4c7d-8064-1960658b1e64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b32b7586d089f02b7024a5241c03331845032de86d975d912aa76bf263be9b1a
Date: Tue, 10 May 2022 22:17:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652221079
