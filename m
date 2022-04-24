Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCC893211
	for <ddprobe@lists.linux.dev>; Sun, 24 Apr 2022 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650811438;
	h=To:Subject:From:Message-Id:Date;
	bh=lc+CPqRtLpNwHkKIYIiwDnorLYMAGnFpjO12vc0R+lA=;
	b=Mfoi2I5qOjQF9xPkZLwrgj2Cb8RFazhaQWHn9nSlPAjR/vzpsFH6uyUP369SPRN+
	a2Ls9U0UTfIo99w9duuoFg/JdInIwXXjpZarW+eTPFc12o/kJlXAUsFmJQk7H+d4bx3
	qoDQ/eSz18ch8U9vXq0OW6GjVDgPlekGWsVFUZPM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650811438;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=lc+CPqRtLpNwHkKIYIiwDnorLYMAGnFpjO12vc0R+lA=;
	b=ZpLJnHkQTkMH9VsUZcLUZvZoichzS8t67k1xl6YFbtt571e3eaquaA2W8I9qQZU6
	CRXUHC/RdvBkC8KNXePYsOHeAq3QTXKvkaJmo7e+LUtl7WJCAY6VgyMjJvVRlN7AUjx
	QMfJAQM/Beqv2ztIZiG6dUASh4jffUbkTp+jazUM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101805c0784c1-35e24932-8829-43b6-a8b0-6d4b4e72d46f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ff9d9b6d2a7d422ff3bedf8c8e6d361c4f1b74b56f74ab3950b8797d719e959a
Date: Sun, 24 Apr 2022 14:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.24-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650811438
