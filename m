Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDEAE7E
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645571785;
	h=To:Subject:From:Message-Id:Date;
	bh=Gm/fOrqbsTxMEtm+BKIIRrCtiuCw/cMJ1qyVz4UUcv0=;
	b=Rj7hJqG4S0ftMXNe8sQQIVbSIwnSeK5Yt997HE7gST1n8x/NeG2FL0hWiAp4rvzC
	elL81q8VDhAGuH++SBnbG75nIWCkOkCJIiDP2WBZr4a/FMiwWvwlFA7fDrEdrRHlnqD
	W4YzVM52W6l9t0CP3Yvzg7N4+NQ5e6dvX3hNajtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645571785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Gm/fOrqbsTxMEtm+BKIIRrCtiuCw/cMJ1qyVz4UUcv0=;
	b=i+FMGtgWgRkcu2oCQkMQcZsyQL2evYTrI96RwYsed39pjOzBEcooBc8/uWNmgyfo
	pA50JsZo084xSdcAG9Rm7Nb/cYJMlFI1QifsMi3mTBHaZuiHGJiXqkgiRFjF3ZC/Ge+
	GEnze2MKI6K/mRXwB2RHjYrs+0GDO4qBsErdZskM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f23b8c0ab-95ec8a14-fefd-459a-8674-a9b7ee89894f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b9bb36a745fb63446dfe19bf7e41d0489c709b962a5394898a9fa78bc31dba7e
Date: Tue, 22 Feb 2022 23:16:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645571784
