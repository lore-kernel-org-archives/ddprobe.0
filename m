Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AC8948B7
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 09:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645177885;
	h=To:Subject:From:Message-Id:Date;
	bh=R4ivAfi5QR9fqqhbFK3u4fcd/U2TYabf7SWYhireLPI=;
	b=Xa8s2fdDj5f5fEJCV4PolXR094zJju6zTwxz1sAufhOu9SjkSh6tq2p8sZPxjk4a
	uEEPAt6WAfxfLMVZzzl+zX/iQDJZT2kVpl/mXun7X2c2H9sMhvN4ywp6eZFN8ma3bu8
	bc1bFvQ59LMFq1j0c4Uq9BCGW8B9SLW6xPHHHy+E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645177885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=R4ivAfi5QR9fqqhbFK3u4fcd/U2TYabf7SWYhireLPI=;
	b=X9XUYmwsHvqv3kCE635VapsOsbFbbwfHonLl6OAYUvVyxxpR9eqy/WkDcAt5sUTp
	BZrsZxv0x6sdmJH7YCX3Cz45nq4mtx/x/qTQiWJ6MCW5L8yVbyVBT4RAaOTSCR0b92Q
	aEhb08M9Ihl5iRepn6hoTvOTbeWI7a30NqIRswO4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0c3e505f-3fb7389e-71b6-47c8-b369-511eb2dda9a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7c505a55976e7ed72e2d5d3536d36244cdaf5ccbf4b984a0245b7af5a0abb9d7
Date: Fri, 18 Feb 2022 09:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645177884
