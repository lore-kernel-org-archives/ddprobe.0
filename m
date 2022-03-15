Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85D2C7A
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647314484;
	h=To:Subject:From:Message-Id:Date;
	bh=rp3R78N8E7TD+4iX98UlGwwQM+/gwijm5PoKVN5T7Ik=;
	b=SNYjI5/GpYmbWJdR9MtylqNQX1UnoeOXgL8fukiRp1pr9eflP2Qrdh41f8UVBqkP
	6YC8w6EGLr+d9YnHyeje8Ieu+kBpKhbfNEL6B3iERWexSfQDgAUhsP83V5qhLRSqoD+
	xaaijO41rm/4gWqdamnCwTBWDpy+SErZX5ySPXa0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647314484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rp3R78N8E7TD+4iX98UlGwwQM+/gwijm5PoKVN5T7Ik=;
	b=gEi7B4mej+vByk4qzilwxu8VY/wXq3UinCH7dKKDmhLGB+utc85nJng4lvGns9Y9
	MH6VUS70FANzCqaBKGoB/nKj3qwM7na5AMCBTRJFxQoLBCEKe1V88zE6yX9rZ+GDKaO
	IbUwGbKFwL8zUMiVHCSp1dXdoN/tJzfXnUZ5sT1o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8b983e38-38540a2f-f92c-4307-8a9f-f8812e2090b4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 31989383d992a926596e8b4bb6d71ca0e6f7b19866e2ac43ae1fcd2dbfe6082d
Date: Tue, 15 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647314484
