Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1862562
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 16:14:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650903298;
	h=To:Subject:From:Message-Id:Date;
	bh=7dMs0jyznbAryb5FRqOv8E1pRCE59WVrBZw1n8Nqb08=;
	b=PgOo7IsXsFpRFdsayefDz+vxeIQvEFxC51ekhM5BfaGxpd5MmYrNpS7x2I0xxIvR
	phh5ayATSG+lPw+uciAUncQI7MTmmgcrLv2V9O35iEz1yiJSBD8xIcQAMTg3Gsjo7Be
	BuodPEx2wPAIoa2d3h+vpGFrzo/l8DGqA0l8V9go=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650903298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7dMs0jyznbAryb5FRqOv8E1pRCE59WVrBZw1n8Nqb08=;
	b=F4/6DMxCyU5ELEc8GCEcHxt5MYewvWPbALr2TySmTwVvNrX1NKmZbCo94kO7ZURV
	YKprD8ddu9yXFvrJTDmWB0Dp+oCizL0x6jMTNwQgjkoRtMofQQOGHP4V3wJYsjUutPa
	dJr6XLSMjOcVAytSvkqj8CHy7ObDq0qeT8wg7lyA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180618130f2-0dde7be1-0a97-491f-9a6a-19a3378ec6bf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c998f88980d27e78a2820fa8c13ad0028242ddece6eb7a94d99aa4ad4edc99fc
Date: Mon, 25 Apr 2022 16:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650903298
