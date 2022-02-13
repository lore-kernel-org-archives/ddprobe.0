Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D397A
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 03:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644724240;
	h=To:Subject:From:Message-Id:Date;
	bh=4g82C/UDeAQYECP3GuToc1fB9K6vFV1mp7nYQGl+xWg=;
	b=Wr2hGatiuUp0ZW0ba04c1ZquIUkpXo0qPVh+SgnBrPGJm8D1ow6boVFm6M/pEbyB
	8MdumcGgtvdg7RoiV+94SPx+oHNCtyEX1YYhPJKcoo04VPfyBSgPBMl4wZSKHuaZiL/
	ywt0Ez/L9BV8ST6Y35L6WUD3LnnyjXx5Is1+hFkc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644724240;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4g82C/UDeAQYECP3GuToc1fB9K6vFV1mp7nYQGl+xWg=;
	b=GKzDG48z5RA7zrdsCVO1DffqrsQKWlyxcRtg1Q18HOKaoxZI11URZ40+xigZBp1c
	OrFm33yMDXVjLOpS5Ysip5y5Xcjcrg+VvVLtI9KloVyoSvl8e5Y66hIHGoOueqwObYx
	pgORw32RUp49EApJZw0Ub8NBb1doy4wA/f7QF1sM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef134412a-1f039a7e-1463-4e20-9fd5-427874c3305b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 362aad2227df15ef38254dd349bb4b910f7331d1e1ec63312b06159fe2a30564
Date: Sun, 13 Feb 2022 03:50:40 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644724240
