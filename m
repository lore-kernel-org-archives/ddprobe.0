Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351077E
	for <ddprobe@lists.linux.dev>; Sat, 26 Mar 2022 23:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648336498;
	h=To:Subject:From:Message-Id:Date;
	bh=is5UfW02cXzBI1bc5qOodwDkGN0GVWSJOV57VbZRr8E=;
	b=PjBRJJVvkHJAvkiRpgCzIIRKDhicriT2IQJvKLsFbboOPDU/9nbdhrBlS8ntqJTw
	OyW2tnClfXJIEa/ocmvNRKVuocjbhBhOINT16xsTmCpyp7Pp9PT5yGsuFSIqyS16XVG
	r4louwaZzGSTfu9jWofFlbRIvijkgXr/UF9sE7QY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648336498;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=is5UfW02cXzBI1bc5qOodwDkGN0GVWSJOV57VbZRr8E=;
	b=cadF2ArUQknn6Bd4ukMiN3Ii8weqUh+HBGjmnJUkLuS6mQQhHXkbsGmcsUMUtvjm
	VfA+Y9PPMIV4AWpZ56HHn0bHuYZYkCWnv4j7BS3pXcukYu8iX2Pd/4aIGV3OQjc2Xia
	95rgZY0e/4mqQAsnq26ZFjASfhzm4/lIhWe/nxMg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fc882ee6f-12124c2a-9b2b-4a65-9634-5a7f0d3488a0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0367a77f363eabc9b0e9ef5dfff48c81abd76a5c7351b878ab997072654256a7
Date: Sat, 26 Mar 2022 23:14:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.26-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648336498
