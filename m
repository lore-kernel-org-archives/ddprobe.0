Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158FF15A7
	for <ddprobe@lists.linux.dev>; Tue,  5 Apr 2022 03:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649129758;
	h=To:Subject:From:Message-Id:Date;
	bh=Qa/jxWwypP/NePS8MAxkQTBp+4iGfgDPyJNTXxafvXo=;
	b=hPLdIkmF9W8rkJ8bLZnNJbWU45+M8qvEkYHWm+LQwxi4LeAOGoND2O3wboyW08ZE
	qxXzjmikOT2QPqyGZ5JtkI2Ou93SGiRgtVJl71sg61KQxuFZ9Fbfe+SR7WLhKLXn/kx
	Dxequbi/74naCS+YQYOCRvaxmt0/SmqahGQt+uHI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649129758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qa/jxWwypP/NePS8MAxkQTBp+4iGfgDPyJNTXxafvXo=;
	b=SbekuJtRbeSVKAZUr5FIU0BCsF1TRGkaIf55uE7RsGVl8zILnsbd/EehvVy/+GH0
	hyGmkClXs5URao1YwGf+QAH0v/nmJXwVBQB+UsJ1KWycWztCOf3NO6cmJBZpv49xPHc
	9R+3yfazRLuiK4bUBG82eNIOjFFPCml5lc7MS/CU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff7cb1e2c-9fe3cc2a-076d-4720-8de7-b1869b4321e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ee74f316d61c27835bdf4979bd099125a3ea81eac5b781f5648dc86982cf93c
Date: Tue, 5 Apr 2022 03:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.05-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649129758
