Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B33857D0
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 15:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647876685;
	h=To:Subject:From:Message-Id:Date;
	bh=Xw6NFGSfXVi85gJ5UW9uv63SOjutK4cE2H9igBCLD2Q=;
	b=mET+e3bOHuImzyGtBUPVGVfAllheS909r4w1UVrmY7RhiMr/MpsxWinbrZjmjLn1
	FnVA3JJ8ez/XmJoc2Xp6dZaKArNEV1NzqueBZCdt0dua9UX2o0ryU2W6+w8fCBbo691
	3V5egVVk7ZDO8QAWuzcBAtZgBYVnG/ZFxG3e9KkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647876685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Xw6NFGSfXVi85gJ5UW9uv63SOjutK4cE2H9igBCLD2Q=;
	b=U6FkNXSIWEiOxwqnlDs9/iOUUbeNXpv4x/rCjGlLfy6hf4X1FR3yI/p5wefaeaKz
	udEp9O6zM8ajZ6ssZjxcuafHump+i4xcJUw1rib+3Ksf41qInpwiEGpBv7i81OKlLNW
	b8fwcRp+ipg/W80GkJfxqWg4wh6sUIWfv2n2jq5g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fad1abbfe-a22120c7-712c-4dba-b5ea-8287450822b5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 381ff1dbfa10c288a4be120fd634e5e456cc6ac08aebc0491213fd13aad6e780
Date: Mon, 21 Mar 2022 15:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647876684
