Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF91D7B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 09:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650015658;
	h=To:Subject:From:Message-Id:Date;
	bh=YZvrPmzha0LJ7u0I7xVbvFuZU7wynuGKbhFSBMRK5tE=;
	b=QLj5C8Rx1IgXW9Dd1TkQfbe9lPFmWffSgEM/IT4Xg+S5Qs2QFejSq7Lbk9lKYnV6
	tyEMs2ImuaoNB2e7OnPqY+Jx0y+izaNgVlj430sQUMf8fCWgtJS8654CqpXag+xjLSx
	iw9W2l2/+EAMqrSrrg4uwkVhwz//ZTL5mp5qPBs0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650015658;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YZvrPmzha0LJ7u0I7xVbvFuZU7wynuGKbhFSBMRK5tE=;
	b=SpLbPU2Ey0AbWU3wLZtpr7hBxghAOdb7EYeRcXcxIOKdgAE/i8zli9GKzuYM/urD
	/nKhr1SkY6rVXZr/U+6DeJcWQfO8P68dS6LmvvCfLhcCo0HrcMZ3SXpy8ajQ/VXY0eM
	gLXYNF9283GkmA9W/4uqqyHmn2Jl3t4P59P8S/f4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802c98e116-eebe9f7a-a643-4112-963f-ee4a1e2aaff4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e8c07b0d7c819e5d184016cd08417e536c78e5b0f57574b3bf51510e7fd292fe
Date: Fri, 15 Apr 2022 09:40:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650015658
