Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436F47B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661113252;
	h=To:Subject:From:Message-Id:Date;
	bh=dnoHCnIcvvaTcE8I78msMFTomuZQkja0eT6mP5oBsTU=;
	b=iEbYh79f8Pv8osTaOqNcVMVoMj2l1NEoctEfKpkTsZrHLsejW7FPoD65bA1UiRRt
	SxJUoxDIMqVNGmZ+Ywq3dvwJ7GGGcQunUwYcbACklLHOCZLBQjoak1N5OVZFIGnrhPN
	KiZzCqrcGu+OTUDaz+W96SnDIW1YAmrFdjfV+lwo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661113252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dnoHCnIcvvaTcE8I78msMFTomuZQkja0eT6mP5oBsTU=;
	b=Ikqy4sZA0N0YzNUPSVEmh7r/mVxIuxOGMMLLUg3kNwM27QKqa+tQYnrTjuIIDXQN
	p9jeoPTVf7+Ho8yqWrzeO548betW4qQpVAekT+/g2oQJPquVRjc6eFb48NHRY5vrLy0
	qqlt1cVm2FCLyM+K95WDJOLLmoLyi7QSsBC/fZGk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c210bac3-abd8f74c-3a59-4361-b7fe-83c5b4f3fa4a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc733665e61c19ee6fb44609f1cbd84dd4c9ea2cc1a53cd25ed54eb4be3f851d
Date: Sun, 21 Aug 2022 20:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661113252
