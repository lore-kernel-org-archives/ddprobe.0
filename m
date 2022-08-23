Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543A066E8
	for <ddprobe@lists.linux.dev>; Tue, 23 Aug 2022 20:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661287852;
	h=To:Subject:From:Message-Id:Date;
	bh=fMAx0mEsLiok7Kx8NHAf/IUWEf1qg4c1qVizD11NC5A=;
	b=NG3DLIPHa1aCQk3LIHcGBiliIl1g6uVJ9mccVAy+eC7tDaUqqBXdks9Mf8f8ecbl
	KxWElhiGDAsk1+lUy0x8tCcIdw2kR6RqOzMVdYuu66rV232sqWWpeO2NoEFBzsDgKXn
	+UWdRc4nYEtT0GfaIeMpE4NJxcbSWNmueoOkt12s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661287852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fMAx0mEsLiok7Kx8NHAf/IUWEf1qg4c1qVizD11NC5A=;
	b=UwXmlO4ihXnBRuAReHzzgnTSzERI9nar+F/oUqZRvCkF1oRZ2WpbDBEu3VEih0PD
	ejx7OngW0KZLJ7jIvVeerMWWY4vOfKBMoAHqTieILsRiSxpyckrsBXYSZNOaJtoN5W+
	/FY/Bzt72Sne7Xy6vq6th7UxXtnB6rJeV+v/I4rE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cc78ea1b-f686057c-a624-47b5-869a-d4db99919592-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dfc034e8d8b885c3e4b5f363f1843a1c57098adafb64760fb5cdc15a2e706136
Date: Tue, 23 Aug 2022 20:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661287852
