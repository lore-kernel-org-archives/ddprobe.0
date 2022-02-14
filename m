Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120A77D
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 09:00:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644829220;
	h=To:Subject:From:Message-Id:Date;
	bh=MA8xNJ1LVSJB0TvsQoZGk9BXnuoQFBx0ngBRgbBzqsU=;
	b=agkmScaukKmhkiMQcsQgn5MeuaO10NbASFbqE1ouAoIxc1AYix1g/y1KH0GnHDc9
	B1Gq7EHVvvBPPFi1hiWfmymU168klWho6qgn+ByK0kp/M1MHfaohEoeUpMWlMay9Hch
	vRPyOFJtyeGKLpqCghKC+2yiSOtviE3ufK0YJjj8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644829220;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MA8xNJ1LVSJB0TvsQoZGk9BXnuoQFBx0ngBRgbBzqsU=;
	b=bQr56sd/uMhe20S/BKFCiRLcsbaCUskPA0/TR+jZwRh5GvDZs8zl6Y1WTH23Tshf
	SJmUHqLFfX9HdEhs7ddlwOxu6MSYeoBI70G4pKskfdat/zKAmjlmwP49ELD2LD67H7A
	wfVSkbLO9dk9o2Cnmn7yJCI2JpE4o1gFkg5FuEd8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef7761d41-7381435a-9424-4f3b-90dd-b8f4a486c36f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d9fb6df77b3fe9850633dd707e17049d03f3f2a2236017d883422ad0eadf10f
Date: Mon, 14 Feb 2022 09:00:20 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644829219
