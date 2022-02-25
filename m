Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B4391B60
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 05:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645768585;
	h=To:Subject:From:Message-Id:Date;
	bh=62JwL1NwWPXkWo6iedIt8cTD7+yB6qqYOxVlbij5auQ=;
	b=frUlWBdalNJ0wio/oUvbfKpKPlNymkjaBO75PghJ2bCJ3Yd/6OA/p/HIzWZlejtv
	+zmL3++MuA5AT1Czq/fGZb9aQ95wz5uERDSdZtv9mQMG4YwppT+gBv99rmuLUXJYmgV
	Gr59PHTQGmQF+nXZm/SNqIcaR6++oObIurWLRqX4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645768585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=62JwL1NwWPXkWo6iedIt8cTD7+yB6qqYOxVlbij5auQ=;
	b=Kmwvj2X65V9BCGdK2oEJ6Cj6ibkhr+UigTwTCXJZSmUJIt8HiiOmgBiUK6bTgx9x
	fJafA76ZB2zdlHdPxgVbbHT76A4wGPtupkQk2OKsquGD7/ED9AX8b3Zrs6w7HFNhTp6
	26eWvLjn9XXd4fzbal4gcJPaoPv0YRPiq82hPe/U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2f73ae77-999a29ce-a42a-48e4-b11d-416b1c274431-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 670479fcd873c967059abdd6939f94ffdc29da82099f2e6ac9c54c66dddf86c1
Date: Fri, 25 Feb 2022 05:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645768584
