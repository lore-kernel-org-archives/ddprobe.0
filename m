Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48095EA8
	for <ddprobe@lists.linux.dev>; Wed, 25 May 2022 16:37:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653496619;
	h=To:Subject:From:Message-Id:Date;
	bh=55JSKC2vM1lr01EU2TAYVBQcqrHrTGNRt5sfGY5k4qQ=;
	b=WcqHbMotsR2pkL1I0FliZNsNVhsd6lBHMsPYrC3y5kEjxbrCkXReDtFf+4aHLadn
	5C/OFGDulBm+jemWYf3m2f28NIiqHXWVjqwEl7wrpKjbPrCVSV4YNq9d6ZIgPwpicac
	pl3k2UU+Ktc/zi5iamOZYnohPkemr1oSLtMQ9ssA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653496619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=55JSKC2vM1lr01EU2TAYVBQcqrHrTGNRt5sfGY5k4qQ=;
	b=SUQdMUkmgiH3hdQ1YLCoSuQCae85ttrKauos8Nw7FVPoTXcboWlqUvLmRbQ2yr22
	v+IlvUZvmbkOkdRVEL7yOxf0eORWHS1/jO/U8WlmkWPZ1dGB1uWaVqll4yYxGngDF5n
	1rkV2vHo4Ezg3aonAU+2JiVq6dMWJ6ra/MPxKBYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180fc142157-30529c1b-40f6-4a96-b97d-3ec7443b0233-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b49d21bea7b8413e1f117447e9f76a00877078bed95fbfe6e38cf36f352c7275
Date: Wed, 25 May 2022 16:36:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653496619
