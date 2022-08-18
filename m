Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674133C35
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660822252;
	h=To:Subject:From:Message-Id:Date;
	bh=GXerP3W35Tn7Yie/HeVte6Nk3ADkuE1Z9Xgw7Ds+mcQ=;
	b=KefbjHGPXDZCHgPdgQtApCSOYWddmBmRKnw9ROrr9sX5AH0oT0FOqajB3UrP5U+h
	orbP36NYFkJLqnNCsaWeRqU+W/kdIEN22YBDb1S+1LwMz7A+T8eTAdG8JF4s8R3seBU
	OaMMPfgvbD8Rj7QAnevoWdQbbYkjMnKlLtEyVf60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660822252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GXerP3W35Tn7Yie/HeVte6Nk3ADkuE1Z9Xgw7Ds+mcQ=;
	b=LTKejDTZ4QxLJ3FdDpHMuUGL0nF+u8HH+gCzmWhscj4MzdFuoW0fZBSfT75irGhf
	UBUDd7ojajS5an6iA4RywgFaWSeC0lcBEcf6ohYD+NBr9MQ/EeF57Yz/pT2YHtO3kYc
	mLW84Da4V15A6cWPRLfCPjs0DXExB6UoN8CctZMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b0b86c41-39efc8e8-beef-4cb8-95a1-1e7031a8aa1f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ea1efee78eddfb6492242cc1dafc3256b326c6338f68b19e5f5a8642595ad3d
Date: Thu, 18 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660822252
