Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 674587A
	for <ddprobe@lists.linux.dev>; Fri, 10 Jun 2022 08:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654848719;
	h=To:Subject:From:Message-Id:Date;
	bh=hwBBEwCwGMKtXPjg5QMNIWGi2RN5qp0yyg6jwTh238o=;
	b=QHA6dF/8kJBE8hFfBGz6hftJDJUHRrq7SbAdvw1NwgnLrS/375Pa/5tUzjyL3ESE
	fNPEWe7kxBH+9LPN4LVCIa7kcW2tbdOWc5t3BJ+/cXG5J0BJ1VxaIeDM9erGruRsgxB
	j5TH4OomKg5RLAFo4LCCVTpCoJaIfq+glpBFp58g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654848719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hwBBEwCwGMKtXPjg5QMNIWGi2RN5qp0yyg6jwTh238o=;
	b=VhkPy1IydeUHqOn53jdwgV5vR2lu8rBx1NWswlLHkZtXxTRQM1gpecrC9BD/2Q99
	3pkyMXUddOa5miUAu54sV2ZLITlv4eDBxhTKISlMtMkicDUeUmXwlFqAw8Av8gasgeb
	A00X7elD7T9zi1SXsEgZWf2QOlABCB9wx3nA5ync=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101814cab89a3-8afe69c2-8fe2-402e-922b-69e34771c069-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d76f72d5f938eebe487442d794ad19769d33379f64c7e15e9292ed4ca220d2d5
Date: Fri, 10 Jun 2022 08:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.10-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654848719
