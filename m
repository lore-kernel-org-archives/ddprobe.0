Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 525381114
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659778852;
	h=To:Subject:From:Message-Id:Date;
	bh=Fwz/tMHYCyu4rvKF1GMsKwUA9AGQ9tyTgAUVGYaeQeA=;
	b=fUeqPwIi0jsZLgyDJfVxHtYq/DM4dI5S6CjYIjql9b34wh7oGeX3oX1y5ECy7Niw
	WuXc+tGiBCJz+lhH47HoWX0CiBb+Mg9/zOuAwvNtzSBXun1xS2Shn2+ArKw/KgzUsCg
	ZNDTpxZpVWYWGaLiTW/N0Q2EGy0iFtUuRPrsXFv8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659778852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Fwz/tMHYCyu4rvKF1GMsKwUA9AGQ9tyTgAUVGYaeQeA=;
	b=B/vn7SHHLoDNkXjP0Yn9W4MizobNvSP3/NkqKzPcYtlJzl25JErXwWJoWBLmE2Yc
	25EoAINTRciQjRp+S3rFbjPyvegYeDnrZm8+bKSM4+iYexwgivJdKWhD5AlwQG1Ghk/
	zg0unaNcY9tHpgBfN1jaS1vfKE7m7cPiMitajV/8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182728766d5-4f6a8a21-0804-4fb1-9edd-77475e66198f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ddd3e80bdcdc7f2fa5404fd2088dad99b723a62154ddcb15ef53d0f7010bb782
Date: Sat, 6 Aug 2022 09:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659778852
