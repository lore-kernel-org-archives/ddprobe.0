Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC263B29
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 14:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645109485;
	h=To:Subject:From:Message-Id:Date;
	bh=mxUbt/5e3hHB94q9GvsSWOquEWqVgyKzEkwzXsQcUmY=;
	b=jM2kIQG4wf33OpEFL90ozytuLHBRSd1K3I6kLU70bfACzOZGVhEH60JxaDMhJAF5
	hIgL9K2dT7bA6T+SjPVY1plQqWGO6jWs+ye2V95kT0/LxmKC1RYc8R8woOZLRU77z0l
	47mCXHG7w5PhIWYhHAY3xEw0JQ4pHRzPAxIUX1YM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645109485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mxUbt/5e3hHB94q9GvsSWOquEWqVgyKzEkwzXsQcUmY=;
	b=er2IM51xI2G4uh6C4fO30fC0eEqbVbDwxlfdJ+TraVPLwU+vV8DOb1NQQkMhWBYb
	aynncYhDdBkJsBO50JQ/nl4v/mDIWZ7RcCMyOP0+WPlI3JirYiXb9PhLap6kmmk0gBv
	z2IFdGeuvNnwl3kECAlPJJ12WHWCX0I8QZBu3Mag=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f082a9ce6-e37753c7-55e2-42d4-8aa0-729b51fb9a25-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04441dcff5f57ad136ff2b90f9cdc478e6a1e6c49b8fb992ebbb9576df1a7bc3
Date: Thu, 17 Feb 2022 14:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645109484
