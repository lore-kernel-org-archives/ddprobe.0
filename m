Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40913817
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 13:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658063812;
	h=To:Subject:From:Message-Id:Date;
	bh=/947HPyRDLpNs3FnezqsF8S0xtb4XV+25LAWz3kTItM=;
	b=BtTQgzRFbqNZD0tHNxOhb5Go4jbGr8aAZHjWPX+Nb5dWtli2RtjxwPX/YRg6zfus
	98HHrZuSVSgn1w5MO3hJFhN8pOKTpY+l6StZmDpzvXLTW8hu+6kywDi19MtM8IRPmdr
	rxEjkSMZuk+2fWrlmQIWemLb1nkhuvz1clEYBnFQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658063812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/947HPyRDLpNs3FnezqsF8S0xtb4XV+25LAWz3kTItM=;
	b=DgMOoAWiuyqLsokqxa82pQ+tAMIRw3NVyuzUjk42pr+HN40tYWGYnhEbifsfQT2k
	5CobzhmNiY9qKpvLNpwNbdfZUCAYxIF8W+/ogl+gkzRfQtABsIg4SUiakBzsugP+Z9z
	2LYLYTbJLdCQNr7gq47xIrSioXUUA6fc+A2isp3o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820c4df769-e47b48f3-2f32-4f02-a327-29426a172f9b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 67c92a186495971efa1aba6d39b173387f19bf4d33733c803c2cb183ab2d9615
Date: Sun, 17 Jul 2022 13:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658063812
