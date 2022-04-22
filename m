Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08C92901
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 15:31:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650641518;
	h=To:Subject:From:Message-Id:Date;
	bh=EYaFmT7fbOflOiask17dpauvXpIhp8/hnLkB94rwlMI=;
	b=EKxFEPiR0tIp8ipYd4rs939eKvDw4tYVTAWBuOvS6iP4lZMGQiqy6Ibs2LcgNrUf
	w6VXjsM3mi4iK3UyngbgRtoV2LQwqjp1u6YDaOI6jiqTGrjZ34sxBjEnPSGct82nJ9M
	3Meyuz7KAYQGHVWcfGHJ1f+3OrjA3ROv1rYOKbgA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650641518;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EYaFmT7fbOflOiask17dpauvXpIhp8/hnLkB94rwlMI=;
	b=LoO8Iqfwezf9zZXiDgiKDqPtrsXd8Rg46PPOZiT7WcMYi2a5k+I0qAMeCYYFNA0E
	uBiE3U9rDzlYc/nOtfuB/kEAmUiGEd5ettqKOHjm9qes6PVD2gwRhi2DYUodcqMWI5N
	oR8yQqkOeJRC+kaQxTkGf45L0E9+FF2J6jhkQ6ns=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051e6beb7-f6043706-9783-4e72-9cc9-3f0c0f43f364-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b80a3a385a569b588c11cf462aa2a577bd1af8924c3925c3b34dfc680bca36d
Date: Fri, 22 Apr 2022 15:31:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650641518
