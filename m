Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 659F51391
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 10:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648029984;
	h=To:Subject:From:Message-Id:Date;
	bh=IH0sdQ2TPn27v4Iy3WjDhyPa6baLsu1o+v9q6kGWLjY=;
	b=DvQyRU0QgGeUbnjYE8RseyLN4OnrEKUhmXSlRzpZS362PU71X40gDTqwaBFQWv3X
	xhVyU3NhK5LYVCXnrfq4q/j0zWfx/g1oGEpNtrFJxqEYLH1Emumi2HW8cxMjZOCalRs
	m7juzq5kAuOxQfRK3UAF8eeCt5gEZCqqi77oQRj4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648029984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IH0sdQ2TPn27v4Iy3WjDhyPa6baLsu1o+v9q6kGWLjY=;
	b=GfEd+trmn7lwMwqzpcEtMSby6BekvZM1Jtz8BHDmCynOw5f72AWpV2yXmbGJNPtf
	oKl/mjAc4uAlk0ojU6Ef8rYnVH7yV8wnm7RvSMa4JIyflB9nwO2mauH0M3WGoTX0S6F
	NhctOh+hjS9/fm38zqyKFKUQQrKGQXETc6Fot1rs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb63de7e4-52f9aa28-7e8f-4b8e-a13b-ee032cd19533-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ead6b619d5bf91ae229abfe53871411ca4db778307c62dfc697202e8046e96fd
Date: Wed, 23 Mar 2022 10:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648029984
