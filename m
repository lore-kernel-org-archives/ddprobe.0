Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB1023CD
	for <ddprobe@lists.linux.dev>; Thu, 18 Aug 2022 08:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660810852;
	h=To:Subject:From:Message-Id:Date;
	bh=oIYTa9WCycaZOLIaq9S9lx0RuGoKiAZ0TiTd/F4Ad+o=;
	b=HSl7fX3mQq0mKyfGc0aRC5bGMlrJPo4YjFGxZcwWOkQQrRq9S8s3H4JL5i/M73CF
	CsU5WqwMZBDv2Z8MCrpZ36wcbhM6srmHziYBHtT4ER5SvaSLaPx0CIc/gDVbpUtDnmv
	y4+p5hpQBLcJuPHzioosi0W3dD//Uyj/k7xeQGLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660810852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oIYTa9WCycaZOLIaq9S9lx0RuGoKiAZ0TiTd/F4Ad+o=;
	b=O7Q2Wtd+3sgdiR3/Dcm3Dhi0hiLaqnupgqc0ihcS3cTuV2k3GXu0y41bfeQ0ztbX
	VqGfsQCsT1LZvGHm/BFct+LipiXGdg/nB9BfhzN5tLQiJPqTOcpNZnvOmA8zKUIj9kE
	1gqWS6Rsxsu4iG4QpAtFV+Vtulv6NHoctg6kILKc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b00a78e6-e6d603d6-86ce-4117-99ba-5a100983693b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a0ae2134bdb2ca06635027be0c6ac6b0de7ad02e24d455851440ccb4101ee88f
Date: Thu, 18 Aug 2022 08:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660810852
