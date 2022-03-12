Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A8F4280
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 11:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647085284;
	h=To:Subject:From:Message-Id:Date;
	bh=RnNyZTAxu3wTmFmn5aX5ZXkvHmkLNCPCKQdcnplvufA=;
	b=JwOIooSwcFnAaLFcFZlTnJ6vqjiv5RKxzqB7cG40mqMn1DUFZ4FVP9wUFfd+G5JV
	HMD2Wh4mjCHqmifKzshyvXscgyKzuFykoTHaJ0i0juQ/dOR4AtO/N3CGxyOi7zsaoa7
	w0hJvZulG0QLruBTdQgL87AOnmVuKWcW3dK6J7Z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647085284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RnNyZTAxu3wTmFmn5aX5ZXkvHmkLNCPCKQdcnplvufA=;
	b=JcY1gn4txfznvvc/V7Qg6wGofzZXLt8jRN7W7RZsiVnBuO2FVKYu1MAxUs+K5DAD
	+S6Nh2oKVoH4pdWJDpt0eU/laHK8R4TKjkkNVSYdi65RpgqoZUaxQgxEE0OVqOxpF6f
	eoHFcZ9HEmqP/fD+AxLyFwB920bgdAgS7yZFSAo8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7deeed81-beea9322-071c-4989-b3ff-d8b8c66f9135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a9bd5f211e455ab50e7cf5ec85bc542dc166ef23812532b284fe1b9ec46127b2
Date: Sat, 12 Mar 2022 11:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647085284
