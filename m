Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0915A33C9
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 21:15:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651612558;
	h=To:Subject:From:Message-Id:Date;
	bh=XBvkl8JWBWGvx9BHztWhuYyBf0GZ+fuKCBtf8T32jow=;
	b=flLL+lGJ8gUqF/I8KJlgmE1bOQ2nNhkeG8DSROal5Ad2lb9em+NnCxKgtzQJNDlT
	8Puyoc+wHwDeBC2S4mFSzXEr9ltYtsl7dXnuYu0UKWgPbA0CwkG2caocXJLltCTbeBa
	3WkbuNPn7+2aAuxzFKvirkU11ODe/yHQ4jGn/xuA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651612558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XBvkl8JWBWGvx9BHztWhuYyBf0GZ+fuKCBtf8T32jow=;
	b=LtCGjcnazQBDYtj7R43FDI+8+X7Sg8SatsKCAr303Y9k0RojljEASaUp+0ihWsNc
	G9/nc5h1az6fNNGRREPQ5zbsv9Bz40SlQDm9CYKZLy+jopEIIe3LQTzntxn5FLRzc2a
	qL072CMq1w3c2RQUBkS6hRp6Ho/+a6IIx1lStE20=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808bc7a3e1-da859385-a148-41dc-bb95-7de018eed4d0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ec34a5f4fb8c186e24e3d91b8b352d7262c0c06d5c254c05661065ba48a14319
Date: Tue, 3 May 2022 21:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651612558
