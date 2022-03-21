Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E30C36F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647904584;
	h=To:Subject:From:Message-Id:Date;
	bh=LUHWjUIUFP2WW7VtM7tKrAdYSWQmJI66Jd0Gzm2DnBQ=;
	b=l1RFhoovnicSj/eAOGiwd8D930rBK6kUyyH2vJfCU2aPKlsPcLsBRB8S7xaULSPy
	h3hfMLy77kMkJoJBJjqg7TGiz8Bn6HuRHLROAzOjsEKktOa9L627qD+PPRRzt3m1WTM
	2n6F52GXnyzhbdtQgiIDv2qw5gH8xmLeWX7sxkvQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647904584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LUHWjUIUFP2WW7VtM7tKrAdYSWQmJI66Jd0Gzm2DnBQ=;
	b=SFYnuFKDZ5DswzpJpSDtMnTIIqN9OCpMfV/Ad0SUoXD27wch6GY/+x/0KGX2/v5C
	zEhkv3nerfBipfvG/HG9GY5BbemQlQRsBdX1G0M/tYtX4q5UIdyWw1pO/65R1r+ZXrD
	cLETmugCTL9Ye+wjxW9A21ojr8Ac3UD2D1TOsJUo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faec47429-d3fc75b6-2561-487a-b79f-9f39103c2b14-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f10321a389d03b3325ef6e75944b548692cea16d4b6978a7b041e1920eea82f9
Date: Mon, 21 Mar 2022 23:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647904584
