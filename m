Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68734EA9
	for <ddprobe@lists.linux.dev>; Sat,  6 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659748252;
	h=To:Subject:From:Message-Id:Date;
	bh=1sT56gVp9jL+WI86D4H5Pesywa19xFl5p1ootEanvJY=;
	b=lUTQc3jlK5LDxaglzPRYbGPpzAbeSuYJo+rSu7a0ll58oToJFuZavCu3KCU3SXAF
	VWAaiQDhPPn9k0hVrlis7PChpWUWetcneV+CW2L+eskxOrUq9VgDyoZ3U6T7Rb4H/HS
	f0cPeESc4Q6E19FjKs8s3Fhkc9Wl/68meZ+sfVyg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659748252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1sT56gVp9jL+WI86D4H5Pesywa19xFl5p1ootEanvJY=;
	b=kj6gMEllFyV/umt0II1YpY7akreZHnLAgWRcUOcOoJLDd8DR3pkYBtH57p6uC1pW
	92lR7B46LXO/LOrsOGyQt/f5b0/LpefrLm9zGx7UGiNV7LL5Wbs6QUQsbFAAT2ME0yD
	90J8PKqvBhG0VnP4V7ld48Ks6LfYlFJx6KK1kqxQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018270b47bd9-0bea6d60-1641-4fb6-b667-79752e114d26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 915f911173962d464fb07b00a89c1dfeefba30ff1084eb255867928cebe57aea
Date: Sat, 6 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.06-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659748252
