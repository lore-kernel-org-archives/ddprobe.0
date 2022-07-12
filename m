Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0EF6AAC
	for <ddprobe@lists.linux.dev>; Tue, 12 Jul 2022 21:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657661812;
	h=To:Subject:From:Message-Id:Date;
	bh=g8WUV10Piu72yZ57aTCbgXJ3Vk4mU1enu9lODZHQMug=;
	b=WMPDmKXWS9v8I99KXM0ipYsyClxHh7sbiz9d+Z6sdU4xU8iTLgp2gBD16JhBFVDw
	GitG25vgZm4ZDj9HFtT7YnNsqzobqEXHTHlB/MNwshmVrmz4O1MRQ3I0ktpFjQecavt
	a0B56J8bXMQND/UagDcEi5g7gc86AS7aWXdyFFyU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657661812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=g8WUV10Piu72yZ57aTCbgXJ3Vk4mU1enu9lODZHQMug=;
	b=BWpcTh6efUbXhOSwIPSWsmRlMlAA8H3svkeU5R4/HcdJaUHkIXUWEML5cELojLUk
	eSCyH5j8Vot5872ErmZgZ6vKUqdkNklkLKty9fXyk1HsbG3g3IKgKo5b95TZxvJP2Gn
	0ikXDZ1gcfKC7P/2m/r7ufpJawOvFJsAEZ9RTr2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f457ee37-2f7282c2-9968-4d38-9821-c862a93d4b5d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cd56704e7bada0598ad958439bf3df9162e2db621b2c8e834ba544017a8a86e
Date: Tue, 12 Jul 2022 21:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657661812
