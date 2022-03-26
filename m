Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84E47E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 12:29:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648297798;
	h=To:Subject:From:Message-Id:Date;
	bh=qSZpFgRJWnmAkdlK30tYMxPPSo5W9hk9i9dG5aAzLIY=;
	b=CYa9oY/RfMwkOXnVPiCoyB/55O2Ie/bYVkKKVvvxTbWFwUKTYedYXK9jZTDAAMjY
	aePx9QHF5tZ4OlyTgyzuXX9v0hMa00y6UAc8G4MVuvQ/MLRfkzm6EqcCZFCOJ7Vc3ta
	NrcUBtBNC2ryvQfHlJOFJJGf7F0r7rv2BXj72TCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648297798;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qSZpFgRJWnmAkdlK30tYMxPPSo5W9hk9i9dG5aAzLIY=;
	b=EU9DrO5vO3GfHXPTm0ZnOKdqWAu8KHZtcceCDIBVxvleYq26Xq7/FvQfFriIPMQu
	a3v0MKY8lbh9gwWCZsk3AcyMyrZ0x7Xf95WDErpgwWDf46kWFx2vabhLi2e54lPs5kX
	egmr150mUmfrYHk8PFI0pP50Vnfy3whkioMFuQxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc6346a78-1bb58778-4417-4e94-8057-1c5fe0d7ef4b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 77844b12937c946129779580cf7b959f6328facf5e57d4f0551894628ee74d40
Date: Sat, 26 Mar 2022 12:29:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648297798
