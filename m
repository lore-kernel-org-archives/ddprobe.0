Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A619EA8
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 00:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661302252;
	h=To:Subject:From:Message-Id:Date;
	bh=WSrCPnz2Qw6TMQj7SEjpoUjC5Z0fHjPzmXzk8mozfk0=;
	b=MqWRWiY+uARuPM3N/CxInJ/M+DlElPyOSBDPXRUeRm+KXpsVgBjLOJdO+bc0km2x
	H7StrpF1bRpnat+kV4/ytK6WIzJSIFy/t8+Wd22JeHLfbrIiw3kI0WOpUqzU9BJtpSG
	uWbLUpk0s6237Alx0W9wNBHCHVJm7pIetOyHp7Sg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661302252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WSrCPnz2Qw6TMQj7SEjpoUjC5Z0fHjPzmXzk8mozfk0=;
	b=Ct1w/UPPdQ9QB99aJiWiNPDlwoLwar3Hf4yj+mDdCWvpW6gRAXHMwj7SVh/ebNWr
	8uDvzBhlv5ZW6yD7cLr944FTHZ7qgWYK4tfy/DMvApMW/P5rK5vQgtQGE4/CcZra5K/
	ovyGW1CQkv+AM1PYdVrpsvwvg/9WR6r9Js+uiwlg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cd54a406-0dee4d7b-fb36-4674-a9f2-1c6bf8859295-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 698ef55c6d2c02d97ca0cbc91c00c22d5f89b19727752dd30372a78f8ea5c9f7
Date: Wed, 24 Aug 2022 00:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661302252
