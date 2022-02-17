Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987D74615
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 22:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645137685;
	h=To:Subject:From:Message-Id:Date;
	bh=I116Vplv9eH8x6cbsvvw8S8FE8btyEGxfKhYuFOZRok=;
	b=QEFe0KBnS/njuItotPD7EK40nyj1ie9Acap2n2suCT2ptFhEw7O5BT1rmLJ3pWTy
	+GM0PID0fQlPDi6kZYfJHm0C+sTxNoHN+E7PKPQzLYpKtzfF1QPcxulQJEkqI0HEHsZ
	zVmvT7SN+gQWh2Me6HZmZYQLwlchzDl6JStFzHJk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645137685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I116Vplv9eH8x6cbsvvw8S8FE8btyEGxfKhYuFOZRok=;
	b=duAaBxeLvr8YVwwxqDdp9VVOolfSMm4WMT20EGAG0lefuf/D770ajXo/96zxImVi
	8zSV1VZiQE5i6N22hk431vzeKczYT8cq8QwMhIwBYe2ddsn7MJl5k9wJbPvEfXe9UIl
	NsY3Dhr8wAwvI10qDduOhe15c28J4KTinAE8bXxA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f09d8e8f5-2cb4a94e-1af4-4615-9633-b3ac550fa1fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 29badf01b0747f36330720109b273ae439d84b3830f1df3cf70af75267768080
Date: Thu, 17 Feb 2022 22:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645137684
