Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEAD63C1D
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 17:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656783412;
	h=To:Subject:From:Message-Id:Date;
	bh=pd4NuZCb55wCIoI8nhZuYv3oRJwCrW+vNfaKv3grw/4=;
	b=jzvHDoUYGZyjvl6Px4KEJQVcXf17uGuLNzIVZnJ4c/jfpEyci02GFUxU0Edv4HTU
	soHYIBn2rw3xZKe2/A4wcc8JxTMOdsUp7smHRUjLvjPTFnnZbX68ubixGTmPKrECi0H
	siPQ16IFoyeLCk9DrI53SdqEPpWWnYR+43suaTWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656783412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pd4NuZCb55wCIoI8nhZuYv3oRJwCrW+vNfaKv3grw/4=;
	b=XcybRgfBsTrKcN4UXMUbTkWalc0urFI6n6FKLUXiwAYQe/dTBbqmS3Cet3L0xfAt
	6b7vuBR9YEAv48Fgk5/G74OMMtzxUsWTA1N6TJuK+iV9yV1MQniN1MbaIK9NOZU+XIN
	LgO9/c0G+e8TuzNzIC2JnkUi5HCQuUBijMa2iJ6k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bffc9c1e-50334c45-11a9-46f2-a308-2fcde64915cf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2abcf229ade31df2b00dec56f3879001fe93d017b6c9fd539f6cedbb9985aa73
Date: Sat, 2 Jul 2022 17:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656783412
