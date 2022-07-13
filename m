Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E02F4A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 19:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657740412;
	h=To:Subject:From:Message-Id:Date;
	bh=kmEbG3IexGrsLQESYx4D0ua8ufdBBcrdLgipoHV8rGA=;
	b=LzFpcCAl44E/4nPA+PugZPEZotNV4HWER4Rx3CIiAn9Oc0y9zsjamcF0lH3Z9RwI
	4h7eorHNAjc3HnC/plUxVj1fWDit4HExlAMBbnn+wF+41Nl/y3dpU1d/nprtnv1rgkV
	NKbJPuwPvyf4dIWtYlU3zXqU/tD1/kucRokFjnsI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657740412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kmEbG3IexGrsLQESYx4D0ua8ufdBBcrdLgipoHV8rGA=;
	b=JAEQ/Kals8LjNnE4tHfaHgZgy9hVGuKPiMGoLQIbq9GUgBYcbSYGuDPJShKzZM30
	08WoBgI3SGi4lGzEKcxbAvSHoBle2wdseDe9v42JroHWd+HdBY8ibBIoSflIBlHEYYs
	mV9wH4wYO0rdnm7ZSTiqyNGQ+bTN2He623v7xa2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f9074568-5b855501-c2c4-41b5-b59c-472bb02b6a6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b3e220edf89f72c33452fcd8b2c5234d540a1afcbb3bd8878c53374897a9f94
Date: Wed, 13 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657740412
