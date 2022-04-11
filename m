Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE5710ED
	for <ddprobe@lists.linux.dev>; Mon, 11 Apr 2022 05:31:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649655118;
	h=To:Subject:From:Message-Id:Date;
	bh=fte8D9JMKK+0ymbYI6ZsnPrasG0X26RBHdQt4O6q89s=;
	b=aCsdtevr8xiAuONwp5IkPASx+EPlrErhGrqhoHBX+kPjpUe9FhFZICAy52TUdwfU
	4Bf4O1eMgtqLjhFqt58YNBPvkqORiiauw76VMLHoQ6tdcVl+bpyKaGRkv0aGfFe+1CU
	SaxaY021MlxsCisRG2RS7pwuQffd3pfL4Zio+Uko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649655118;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fte8D9JMKK+0ymbYI6ZsnPrasG0X26RBHdQt4O6q89s=;
	b=EVXdjmMtMwHUpQozEzc2aglrozqk0Knu+3yAU+qfTASbgvw01tnmFMch3rtVbDsc
	3A9j+PBXHrYVXvJRET7HhiVOOToAuTak2vq01ptBENqnrtEglRc2CJO9tEKJXT5CHlv
	D9IijevMawEAWzFFzZCCIBlu347uR+uBspNuxLzQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180171b79ec-e3814a04-7642-4ff4-b125-e7fad7354986-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bd5c57cfe214d9d1c90fd77b7b6ba26ea06836c7e594ab32420518a24427e15c
Date: Mon, 11 Apr 2022 05:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649655118
