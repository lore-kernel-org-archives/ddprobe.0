Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEB727C
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 03:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644896185;
	h=To:Subject:From:Message-Id:Date;
	bh=WU+8MoAV/Tiz1/LTVCJgpOEUQQI8BJ2n0dL/65BstUg=;
	b=VppVIBNgUp8JZBk4w/v5XXDizV7NQDnTH4jrwtLrmJ6FKGOqt1/vhSYtRc8c44Xi
	I0PK4MGeHMkmSJ+7m+XdgTxcDOArqWkTrYHiUQYHT4l1xi6n1NOTsl3beA/WF6n4e/w
	tyZyn8OmHamZs7yKbcoQ3ll3Zg/Y/wMrIi8gI0ZU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644896185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WU+8MoAV/Tiz1/LTVCJgpOEUQQI8BJ2n0dL/65BstUg=;
	b=Iz/rMpUhbc2stiAAy+uqsY/zX/M7ySOchYjfmX1tdWsFcPXufLqH35UXVsGWvuPU
	cvz0EOyYRkUfm0SMhXC7UI2t9tL+8ReFKpvWNN+YZS8aVRAa6TynUdw+arFPGaunVXe
	yADxXASxgdzxdjIP0rXbfNW2sHpxfcdNOaifmYcM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efb73e9bd-0c5a3c25-cfc3-4bef-ae47-d32c42724798-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b1f4e84992b3e1b434a1d0d06337e441b0bcc3816ede21b24a2667364d8bead3
Date: Tue, 15 Feb 2022 03:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644896184
