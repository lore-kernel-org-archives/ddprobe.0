Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45FE020F9
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 04:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645419384;
	h=To:Subject:From:Message-Id:Date;
	bh=y7NmvNe1mALdiZS9n4vscK9bjv0099DKlEftGo8FaeQ=;
	b=CkGvdlcIGXpKlqAg+IitLHSb3hhkOBNQCrv7EdLKuMVmhtGMsQTYK6ObipdSEUe4
	qWcOeWHEX2Jneyo8t9jewjxVol26qD1WjfLrePDMoh+IZKiptN5CTG9ZaHau+HEdgYu
	yV8TLEfqpc4CCibpA7kvBJfaZq4ZmjssABL1tQss=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645419384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y7NmvNe1mALdiZS9n4vscK9bjv0099DKlEftGo8FaeQ=;
	b=Y4yS8zswEAkjF67k4H/suYRFBIZ7N5+gU6Poz4+P/nJv96alBhjBYYI6530RPLTA
	RBuxCNmd/px8BwrXRs1EtmCIZw2BHTxd6jfSiRFV1qkAsYoCeaDzLDgoyIMAny5V/Bt
	6HWaIhK/wOqnN8NqR/kJrUgLMtEbv/f2fF660BOQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1aa34fe5-a25518e1-fc1a-437f-a2db-bda107b4496d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5372def6015a8306efc709358c1a40601aece27edd140357aa357c5099008320
Date: Mon, 21 Feb 2022 04:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645419384
