Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFCC03D83
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 14:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656598613;
	h=To:Subject:From:Message-Id:Date;
	bh=O8lfL39+lh8Bc01udbOUeFVptPnnUvb8FST5Bnpl9Gk=;
	b=aP44cnlmGLVVypYSWJoSG64zJIJPxA53JcXpvNqca0+Vhyfgq0k1n3ZQqlQWnzDe
	Zpi6JAQGK702H29c9ZYILBvALYJzU+A5nBlp1KR2KVbu9VB+o463rjr/y5iTpLRkHa7
	tmfk2XD2b5kVgeopAwLPOOexN7S0HYPA7q+KZ37E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656598613;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O8lfL39+lh8Bc01udbOUeFVptPnnUvb8FST5Bnpl9Gk=;
	b=XyS/1+zDd9Stt+/MGJT/iRj+GABpv2QtQheD6E24oEWhUdCY7CeGtjDl4iFq8BCf
	Xqiw76C39Tw5nRmkHIxfkKcWR4kCIFBZ2c/HRJvX3kTKFujDVurgcdJvyy71JXtirTU
	R3s+0/+FrGz2W/J24LfMrrvTdV2S9EjnTzgTxCy0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b4f8c963-d7870329-c3bf-49d5-820f-93b8b079583b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f2cbeb6c6978003ff5c45db9f7c63d844cdeb48e132f62b0027b7b848ccd9517
Date: Thu, 30 Jun 2022 14:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656598612
