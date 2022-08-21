Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 939A07B
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 00:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661040052;
	h=To:Subject:From:Message-Id:Date;
	bh=Pb4xiW4jIpGh53um7lsovRJkoZJoD7cuL6jAOV+FO2w=;
	b=LqZaGkIYEFoSnTXHcZ0ryDRk1HMELXTXb3DS4vTS9ZW2+ferTzj4KLYdM0P0aqXx
	KerXiqOI+PIC4jT513ZJxyE6U0jteNW/HCtEizMH+Rffbv7OhbrSpQNh60BI30Saya4
	85ld3ryCgkfq7Dlam6MdxQyN1mh0sDCYVVEZyXTI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661040052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Pb4xiW4jIpGh53um7lsovRJkoZJoD7cuL6jAOV+FO2w=;
	b=dSr7oAzXfMKNiihIY683D93olDUErjZkU/TYq9vRKjMP0JTS8ooGwoeMMsRZHgNg
	mo0X8cqGpf6QIHyPodwo6qPp8UqJLDiAz298PBTuIRvCc6f4C5ukCCjzU3ixn3Z7CDo
	uxp+zFhdRWpZrLo15Kb1YZJVad/OC64GQXN0/vfc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bdb3c9bc-48bada3c-65bd-46a2-a471-dcada93087bd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39d3bbbb405afe0bb5e98049b3bd5aa8b6dc73d1352aaa736532e5a2baefcc96
Date: Sun, 21 Aug 2022 00:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661040052
