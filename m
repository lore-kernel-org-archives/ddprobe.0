Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E082E7C
	for <ddprobe@lists.linux.dev>; Sun,  3 Apr 2022 03:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648956058;
	h=To:Subject:From:Message-Id:Date;
	bh=Pkc6AH0fdj0h+GcopwHL4bJr8eJ6EYVYQkRHRNxaUjo=;
	b=LPsOI6KCk9j9cIXpJIJQadLQglc6gbbTvnuK6ZaFWEsgNDXK+dg2rA9od9i5F083
	03elFO1El30FY9+4d+7Gt5B7z6UHrFKTWc4FTCQd2R7qy3pvp+HN359XDZHHZf8PTpk
	8HW9v4ClnWs6CiDcVRmMZ6vwpflI35fxiw1yfknI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648956058;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pkc6AH0fdj0h+GcopwHL4bJr8eJ6EYVYQkRHRNxaUjo=;
	b=ePDbhfIjgcrEv9hsz/Z0lHmHwnNhB2AOEiJgqlYcsiGbciHIlN1Jjq6/zPtNVyY9
	2VDvSfbjtvfDVVodVOudBM36ghv1Nehp3gL0m9sw6xm372FbI2YP0gR9QX4lXA1Rfq0
	tEnu2PcuqhWN/zzLBnKDv5WPY0xH8509vYrhekIA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fed70aa89-18014926-a0d1-4c17-a3d6-4d4c31383ba6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c167333e024ecb38432bc7a98c42a369b0e74640c9be24fb04733a0020745434
Date: Sun, 3 Apr 2022 03:20:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648956058
