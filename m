Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 996A6361
	for <ddprobe@lists.linux.dev>; Sun, 13 Mar 2022 21:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647208285;
	h=To:Subject:From:Message-Id:Date;
	bh=Q0h4wYZyHxOnGeYAucsXY6KLdxMlK9QIKBi7AulgqKE=;
	b=LifExVN6jhEUycj8U4ihDaDpwXUMqYRglIYLleu9t2c1cAlXMoP70OfogI0Qq0gM
	5upXz3vEgLbgDH1LwwBpfU2I+6dmEJCAn8zo9iSjQrxwjG08cK4A6+GfGaIWphoQJHb
	4WzXWXOVHdHYRbvSZP67YjXKUkWHWctQ3YN3uuyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647208285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Q0h4wYZyHxOnGeYAucsXY6KLdxMlK9QIKBi7AulgqKE=;
	b=jUdsgt+hxYj4Tj+FzayHaJuwn6vGKMd45TKM4QpDUQhX+KV55cCafKWP2Y2lfnY2
	1Q2MCTQOWee06g7wcXLciZSEa4n5mPwKSZLEAQVxHr37NG5BG4zcXtp5zqC8N3sp/Ls
	9apYkBJ+oWNyYPqz1VQMOsuPBqg0S3i6xM/Q3UUs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8543c27c-cf909e41-dece-4bd6-b2b6-e9073b270a57-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2a73cf8f063285f531686d009b3e13db332a655d05c7056868ca4a45ab39dbf4
Date: Sun, 13 Mar 2022 21:51:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.13-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647208284
