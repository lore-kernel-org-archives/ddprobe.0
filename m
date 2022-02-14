Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E556D627
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 01:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644801036;
	h=To:Subject:From:Message-Id:Date;
	bh=4LVPnY1jg/H63YswoI6jQtnHgUGyGu0MzcTgbjUwHCE=;
	b=VNKW6S9C3d47UPGNMemgpB+IJxWvMwmRut2wCjF4A5FPXP+jjsPUN1gbTWYkNBqd
	wTXo6KGrodB6ZJQuC3PlP9JmcFlmPLDASdBE65w1OszjwCMB9soPA7a+RvpZNugJ4nj
	jQUwO1Db86ebG07pY/hqT98pWrN6uOmp1nB5Ffzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644801036;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4LVPnY1jg/H63YswoI6jQtnHgUGyGu0MzcTgbjUwHCE=;
	b=MN2bI5amPANf3OIHhQ2OB0EjJld2fgTSn/7Z/xVOXz7vW5IhPMfkaj2Wh8E5TPTc
	xkx9dee7/607R6rEaNS63Wxkno+DgnbLfovO3w09z+xlwJNZy6mweHqB3uIbVFpW1DI
	HyywJYfD49DO0WOsmIfzFML/47Gif7XZszP5Ald0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef5c80f3b-7912e5ff-9c93-4864-b050-da9c2d953f47-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5dc4f911f993b0cd72d3969a5a7044de6b960b6c12381c827bf32adc97f8f94
Date: Mon, 14 Feb 2022 01:10:36 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644801035
