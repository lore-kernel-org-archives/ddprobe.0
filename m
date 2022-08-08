Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494D77A
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 02:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659924052;
	h=To:Subject:From:Message-Id:Date;
	bh=mR5CebNetiqW4DcBAnOBhARu7joD6pt3q7ADlqP5eFA=;
	b=YCc/ZU49w/aZjEOoZNz4+l7zPcfWPdi94qxQoH/E/jvw/xh6cl03MEk/ulWMMlgp
	zVZALTmLMlWin6HynxT5toVORY35Q+oTuXpsl0kUhwTFZv8fCuhfxOJbrMiQgwa/+6e
	vZBgcfgIU/dvf2f61fByDwsjhGG4VGUT/c24uxL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659924052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mR5CebNetiqW4DcBAnOBhARu7joD6pt3q7ADlqP5eFA=;
	b=cUAvk8t7d5pgiIuqaKde2vUqlbHSwFyqBOEOxdZfp9L7V5c5rqQn+JwvUO0OOycU
	cgJpGlwp5mdUKjIzvojRRbSTexeZHAYHxQv8pu/72aZEucvdQBwRSViBZXDmA4j+xrG
	wBxvNSzd5I/I7xL1vB5T5tfHgu2BVB7Be+4P7L+4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827b2efa2d-6aab75a0-a84a-4d02-99de-7e35b32560d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e7e883d310c62df45af8e45e3949575ba6b06d08edfec3c3c159eaf9086de272
Date: Mon, 8 Aug 2022 02:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659924052
