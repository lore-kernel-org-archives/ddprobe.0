Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9F0381D
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 00:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647217284;
	h=To:Subject:From:Message-Id:Date;
	bh=5+UHOtM8HyVJHQzfG6KJeZYN/xsbP+92hHdQZHNkr3Q=;
	b=aInlh6lCYw1Q/9ZOqiPfJpWGFSfzpyh42jXB7v5vETEmEh+Qeyormvt6RQbjIYNz
	TMm2hfh0qCLFbkma8JhCS8Lalkbhk7JGXpVf09zNZycQ6PAZ56nNxzFzTpSmxXpC4r0
	/mRJ/AQG4zxTNtrGPhDJV3S+YO1PAh2RQ1q9TYCg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647217284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5+UHOtM8HyVJHQzfG6KJeZYN/xsbP+92hHdQZHNkr3Q=;
	b=gvkrg+sE8Bje2kPlLS35648sdXK8JWVDsVXO6T9Qp0N4tzN7zTIevcsrpM7FV1HZ
	h1Er2ReWkYveXs7dEuM/IyFQgtNUmT062Q9l7eIX21yR8xMMVUk/SshBg0S/SgjgU7P
	vtV2RjakOJuyYCY9LUL/E9dX+SLwGmJ8DDxt+Yr4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f85cd169d-0bdb698f-e452-478e-82b6-9bc354cb789e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed6bfe259799aa710e5a4b48468129462cb9ddd8fe805d53de3e6ece3d27fc46
Date: Mon, 14 Mar 2022 00:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647217284
