Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84B87A
	for <ddprobe@lists.linux.dev>; Wed, 20 Apr 2022 21:49:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650491398;
	h=To:Subject:From:Message-Id:Date;
	bh=8UP8Gfk8IYHuGIZWtZhCsKL0Ux5l0+saBxG24TpHmZ4=;
	b=IxXqcM1MujSAty/PbvZgjF14BAo1UaCcvXP5VL/2uepF92YgZfRTKPMrorLoUJwT
	kLYo5blIkiLhFFw/8cTwjcYVRa8ciu/HV1HHCT+GovgMXiJRll7uP48BSF9278y8jPJ
	QwQkNMeH5bezkM+fToFTdiuS91WnlsXtx5fSXMaI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650491398;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8UP8Gfk8IYHuGIZWtZhCsKL0Ux5l0+saBxG24TpHmZ4=;
	b=fWj8623b8jhPoXaznTohDzU9ZTxsTvFMzjuhqK7E9iPdwimhkIHc04Yi1fNvpoF9
	JRpQZm2S0Ra+3D88s+3QzjOtH0KihtmLwLr9WAdcxpsCuino4M5ou6g2OwwzdTtY3hn
	EJMjrPLHY9WSWQa4ngX7bvBZaGiFtSIfDraPX7xw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018048f418a7-472bf3bc-27fb-43bc-b917-dfbeff6f0bc7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c609d869cdd0e19d9bd62c768dde08ca222d3506c004fb682d59c8f81fe52250
Date: Wed, 20 Apr 2022 21:49:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650491398
