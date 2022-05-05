Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5037A7F
	for <ddprobe@lists.linux.dev>; Thu,  5 May 2022 06:18:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651731538;
	h=To:Subject:From:Message-Id:Date;
	bh=ToHAGCS2KXrBEKMBDds1895WXpQ13yRYdaunlWu2g9s=;
	b=MdDdiGtVuLMD3d4gS5IaJms4hjIGx4Tm1mXPpY41LjKwDCJSXyeMs8DXDdDzc6/E
	lRC1429S9iyZZGetKs7dz58nAEw2rLTZ2ctB8/nMVRDwovGwr5OrTXjsoU6ZCermOMd
	Ginj0O9H7xIx9FbSOk9NR5FxutfcGgpOV3d/tdm4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651731538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ToHAGCS2KXrBEKMBDds1895WXpQ13yRYdaunlWu2g9s=;
	b=dmozoH6iOSsW74CXiQkvzphicDo03YJEDErzwJVPDFIw3A39C34YUnDoefgZOxiL
	4UTov6pyoKeWMceHIslW6oQl8kDoY5/N+15LVCtMBWSzwWMUzqxTU3TuP0E18hFDZWA
	aWbgb+42JiDzrNHjKpzfZLTClhuHVyyXz5FiK6xk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018092df21a4-edc2483e-9658-49ac-85c9-3fadcc627ed8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 321a4d88d364a432e30e1eca7608b27062501d9e44d82ba381b573030a6758b6
Date: Thu, 5 May 2022 06:18:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.05-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651731538
