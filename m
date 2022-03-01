Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE635EC5
	for <ddprobe@lists.linux.dev>; Tue,  1 Mar 2022 22:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646172985;
	h=To:Subject:From:Message-Id:Date;
	bh=e1hzh3EBp5pjxkCBz4iqBAN2FLzZoxlVn+sJWkBsMvY=;
	b=d3Hidztk7UtWBPXbF6Y6DG6BB0H20eAAgl8O1pcEYVuGZTFsG/btjm5UIr2lCdce
	NsxNTF3KhGALY2SFObQ2JQS3t0FUT86PZjWzNCcOfsAutyEdoKgEM46KxHXu3UAhjeQ
	3CA7xZKC87s0L7xhwQX8ClzXyvOEQJxVtC45Px7E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646172985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e1hzh3EBp5pjxkCBz4iqBAN2FLzZoxlVn+sJWkBsMvY=;
	b=cQGhBeVxQ4PhLGIhG/mBKZlFGFmldbdhPjKyqBzO6y/XCtIEFIkeblyAAH0hMUbB
	lY4ItK29zdlcMXeq5+B7jY3A8mr50zS20fl0p+Ecx69Rmbx4oDlCl/s1gUk8YC1lYFU
	kSOA5AO+GskaGVWHv+XzuXLpgq6+/7/J8/FcpJLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f478e5609-ddaabc99-d87a-4c79-a6f9-2dff2ff50f51-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 88a8fcfea469a8de4a3e2ea04def5752c74bdc1f0f7b37c2ef7f425466586b76
Date: Tue, 1 Mar 2022 22:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.01-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646172984
