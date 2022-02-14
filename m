Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB5BA3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 19:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644867065;
	h=To:Subject:From:Message-Id:Date;
	bh=R4fz2d/T0ko0pehqajRxSe/0vfJxt4t6bcsEqL4fEyI=;
	b=DPOChFXwa+MVOfJgU+8LP6W5HJ7aQZ7WXmLhreXgRc7TU1zwphZSjjWgroNfrWt6
	gElTso6byDdOCK6yKUsFqlatVlFOACFTOap7YWcOtH0n0ab7XdrHxYEgOlc/iSx7HWf
	9onfqYVHcqmMNYVhIOiYta+0mHYVkl+cMMKpN/UI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644867065;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R4fz2d/T0ko0pehqajRxSe/0vfJxt4t6bcsEqL4fEyI=;
	b=ejxj2hffKTlWmF/MLmQ/r/lpF6jW6xFsEYBkMIET+0HUvfz++273abWk4QCjd7GJ
	2g4LruqYYyvksNjp0McyTd18u1OZwSMIfTJprmqhYZe3Y9YQXrzpeO+Ua1TIW5w8i/6
	o89Ro+aXnz/U6zwQ4z6Fq0Q5pFyYxp9ECzml/eJ4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef9b793ba-193e2305-b691-4535-8536-1b7da2bdca6a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a0d334b5f6b6336bcabaa17b6e9a3c09dbfb604cdd5c0e2f808bc5bbd98f5fb
Date: Mon, 14 Feb 2022 19:31:04 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644867064
