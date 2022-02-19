Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C6ED28E2
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645269084;
	h=To:Subject:From:Message-Id:Date;
	bh=01wg0MQKXXnmLpIIRlDw+M6KN5/4Dc4dkwmodGZ1WO8=;
	b=e17SCDOZ6RltOT8tnMKGAx368Ve2pL9P+NVw8b3VRzop9KldaurRmivUB/QuAPGZ
	lGb8LETWlYEsDw28qniOzZnnOs+/TPnef+ysEj2jYB/1DCzB9lvJI4q9B5cq7L8Jqy7
	HrxCJbldsSazLecFSEFTUWkBg/UqqRmZasa4jD6w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645269084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=01wg0MQKXXnmLpIIRlDw+M6KN5/4Dc4dkwmodGZ1WO8=;
	b=drvjetOjezFhFQHEPcOzvNqTDM+5poAmrtpLhssI/k+qSyyXOEt8mmqE+0PVZDHx
	ZbOSLf3G9KGIF4SStu4ewCqoapLBl2gUKQEl4rzd1l8dZFPUzEmtbPmwcqN5V9Q0IEy
	4L07OP3ogs/FCYUnBK5gutB7kPUOeEIxR7P3vM3k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f11adea59-2d43ca1a-bf6c-435c-b04d-1a3c8c66931e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a74989b8fd7117af72d9c0b17b550d272e75982b0dbe6b4f9fce6d95e2aa1ef9
Date: Sat, 19 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645269084
