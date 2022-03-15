Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98DA923CC
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647367585;
	h=To:Subject:From:Message-Id:Date;
	bh=sBVDMDyK0Sikufx55HoRb4X5UYiGqVUKZ0Syfe0hKZQ=;
	b=AXO1wKcpaYApwebmwe9knxqVOrSe8H62NoNrokQjMj01jEB7R+7jrqeaE8uYvuBb
	k5ZyIOibmUOo868AIbLulxRBL7OSYS1jOQAUQo6EnfgmyigE1hfV+jjoc8T7EBcdk9g
	amBLvv36eoHN8bf1/a/Z28oLyviXRha5NQJEeU44=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647367585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sBVDMDyK0Sikufx55HoRb4X5UYiGqVUKZ0Syfe0hKZQ=;
	b=gRcC43vy9Wi7WgW14QjfWtCAydHtdb2JlBPVqSqxsR1Fjgq4ojWb3RbsdaLXws3S
	SfL3L3d7Cl59BZcKBQs8I7Lzf+liq2CWfvfnMki6wq/UG/1tKx4B5unEjePyXWBqxzK
	j0C95HMAMY8hvfo2OX0hrJy7CSS3wW+R+ol2pn0g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8ec27c2e-6ca6bf96-2efb-4d11-a65e-d4a7d1311d1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8d44a3c2272475629c5e5fe53d092c7a61aed4f4999240dcafd9731bf9ffb3da
Date: Tue, 15 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647367584
