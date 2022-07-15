Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD7C33F0
	for <ddprobe@lists.linux.dev>; Fri, 15 Jul 2022 15:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657899412;
	h=To:Subject:From:Message-Id:Date;
	bh=9ZSNbGleR9UWgL3rboFgMS2nQkBGfSvurrT3zdMdjUQ=;
	b=Otdjupp2/q7KjIIQ+SzhvkPadAExQR5Ft9wsOSRXlsnEmIXjLxlTHlUNrJWdMXPL
	mU+lptSi5SV+mjA9lHayl29GTWfFFyOlV+jsrUY/UG/gsOwlPgj01qGKHc0Ik6Uv23O
	cWPgZ8dM2lyfTgIE96LWa+hBjlw80VqG+L/HC/Mg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657899412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9ZSNbGleR9UWgL3rboFgMS2nQkBGfSvurrT3zdMdjUQ=;
	b=MjLyUX7bEieRs1GvhUV52mneNhALiBe/f4L4ZiX0XmpUbu347JF5c+yq+W5ogFyJ
	HuDipnha+0iNXNYDUNmiLnmjIEPxmQL+ShbwR+/6EP6L5L2qBi/N6FpX5nq3gGnX+sL
	5nA80UuE16RUzO5izMlnPKMqBPRU2pNOz0sFPZ+8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018202816b50-c64c7bdf-b15b-4f52-90fe-d883f5e10645-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5fc60c46f047c1a785b10d88214601c54361e9c1f9f36ad42cfae17cb03c286c
Date: Fri, 15 Jul 2022 15:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657899412
