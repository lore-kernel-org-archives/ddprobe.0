Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34A0C7A
	for <ddprobe@lists.linux.dev>; Wed, 15 Jun 2022 18:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655319359;
	h=To:Subject:From:Message-Id:Date;
	bh=RJ6ArUOxoHPPD1tM//D/yflPadDxpl0u82ngq4OQiVQ=;
	b=ig8Q51aq9E6L7rFmLNkun5ofq4uPELtxktAXR0QmhaoYkH/o6xzSDmZeoXJ8ULi0
	pr8o5eCbgeqiRMX3DMQz2qNZn9YAVqNxeQ7954E2Qu6BGgsXyjfJS8JfO2cgDQf2vZm
	b9XhT2ZNN/Efqlg5LehHYSSwTh4yzdKyP3fgOy3I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655319359;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=RJ6ArUOxoHPPD1tM//D/yflPadDxpl0u82ngq4OQiVQ=;
	b=kOSf/k9utpS3tnqpKJES7NQjcwoe8daAp4hBvCBg8kAeWI4Zax82J7wO5NDhGfgX
	VhloRc+DlvXNMm83MlD1vtUW1Dr/fX6CFgww3FbT0fF716hEd30m6B2h6e5omVMF9wO
	2twwtvd5ElGcToEsy4mSAV4XXr3gLaR8D1Lok2EQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018168b8ef4d-f7473c61-6c03-4046-946a-7e1f8b73b737-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 910b55d8d41c489ab096c1348c31fefeb9c40bf514c439d4dc557658f67c2593
Date: Wed, 15 Jun 2022 18:55:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655319359
