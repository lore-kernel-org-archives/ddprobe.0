Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7464C1FB7
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 11:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646566284;
	h=To:Subject:From:Message-Id:Date;
	bh=h4RkitAv4RwLvbI6/BoR9pfZDXmUNGWI0hu4Gim99RM=;
	b=doG2vbj7TswHPIRjs/gmFKlVuq9beUGnhCNm4b9Rih5EYtbwgedrpBV2kJe0irYP
	37tREPY/Ufs0wlufjIHrmD2/88PbySyfx8Xuxn0w7SaEZ7aUczaS+cnKRgjee/FSrY4
	3l6b6kVl/iMayo4TFf4LPBa/5Fyg2fm33W8Gf3GI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646566284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=h4RkitAv4RwLvbI6/BoR9pfZDXmUNGWI0hu4Gim99RM=;
	b=AmxUwJO/xe7cZEiexgf9YDusCa7T/kC3B972XDg0U8bw3gEEA4XjrsZA54iJ2SKF
	3F16UxLwN93ee090LspfsCKoSy2ONjgj2/VaOxjvc5+M1hvmPUa7qvwjb3b7rsbwQnG
	SKV1tMgOVVaQeTMDtYbPYF1wdMA2Q2OuS0d8Vbt0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5eff9de0-dc0d6bd3-ac86-4660-987b-98257a3ce79f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 06411762d8e08482155794789348b6326a288b9395034dad6212d8d6bc8846a1
Date: Sun, 6 Mar 2022 11:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646566284
