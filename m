Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 077A97A
	for <ddprobe@lists.linux.dev>; Tue, 26 Jul 2022 09:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658828212;
	h=To:Subject:From:Message-Id:Date;
	bh=GUlinHeKwZAhJqU+HvMFMr0AgD/p3hZ0G3dUlXb5W5k=;
	b=kU5Lm8/PAc1FfxRsFR649JCxVwpYpfsRZ1mSny9D7RcydGkXyMU0ru/QPjFTsdOP
	gFDt+eiQPfcGXda+WzoSePXotR0gYwU467ZU//GiD/wg1nFgdIGeAUkGvJCCyatnD7J
	OQaE3TeJS76TgjxvYhTDjUUF6ykyEjyuDVejh39s=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658828212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GUlinHeKwZAhJqU+HvMFMr0AgD/p3hZ0G3dUlXb5W5k=;
	b=VzvhStdXwt0z9HPyRSqqd4rcgUclSfa88H4uRbc17e6uCH9jT5NSbDBs3A6+FF0t
	h2Fk+i5aJ0a110UuFqMPSGTZ3G1IAioeqoTNdW4sziYc2lcVfsDOvn4xznSJZr7N0N1
	yqDmjLuvdGy6yKwr40fl8A0cI537zX/NY5qm/Sy4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018239ddc855-82dc7ae1-2de8-41e1-b1ba-735c9753321a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f78c95d93e59c9b76cb23f989e4e7a6ce548e680f5e6968a9c2588666c32bfd
Date: Tue, 26 Jul 2022 09:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.26-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658828212
