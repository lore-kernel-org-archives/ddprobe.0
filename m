Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC5310E9
	for <ddprobe@lists.linux.dev>; Fri,  1 Jul 2022 08:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656664012;
	h=To:Subject:From:Message-Id:Date;
	bh=5iFrPRpml80OPoYODXb7OeDANWXcRVZhsgPHunXN1cA=;
	b=XidmPOeWEQiEcc57fcrs1ziz8iOAIu1pKDAmh8gsZmFpAMn8b5nwVUpeLrQdw21v
	brr6CzYDZABAFSydFyVcWsRrW7seJgSJ1u4imWNGy+2dj5GKO81rEz+xf0gkbOobchH
	M0+1ll2fNlWwiKJ/kGbMUgHu9DxkPeq1hSrWVZzk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656664012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5iFrPRpml80OPoYODXb7OeDANWXcRVZhsgPHunXN1cA=;
	b=DVIl6UsUkQNhMrd9OtheMMmICLszgNgmWTtxJ2+dtNWjFEZ3TgY9P0moSNOZ+lqh
	0zhYLeGEkRG9ocBCQVRtR5CBDW/VHEzpgQeQb9zmb66FuYI8Tu6pO8GtT8CMff2NBC7
	U6g4BYcKY74SHSXUfBaDarDv6a0s0Vv7Imb2zdXg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b8deb660-bcb0cecf-fe91-471d-b236-1c7527694e45-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f31307af6447abcfc219ffd468fd5a139388ee333c4c27788e9905c3a61d7693
Date: Fri, 1 Jul 2022 08:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656664012
