Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3C4B17C2
	for <ddprobe@lists.linux.dev>; Sat, 23 Apr 2022 14:43:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650725038;
	h=To:Subject:From:Message-Id:Date;
	bh=dGy+8u4wyWLd73IoLVRGkYfNn/hh9/8Yy5TWjMuoUr8=;
	b=mHvtggDo7l0iisVqRsttSZx4ARsbkC3Fcuc2T8+DdG9KwuULmsb1pxAP/PEpmzUS
	n9Di57hC9bcowK6P7gtftif0gDDNu4/4IuNhjxuTPwr0fMCpD6mizx76Vv8y8i+YFEU
	wkfkmAC+e7rMwTV0OpOGPIIDCwwhCSRdLopfV754=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650725038;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dGy+8u4wyWLd73IoLVRGkYfNn/hh9/8Yy5TWjMuoUr8=;
	b=czXpGN1LZrjkHxsaI+Eh1ijJFShpQUrV8lJCDF8qrlOJgYmJH7/Aluarf2P4mb9/
	vJ90LyVqGBXa9bZjUdw4sL8t7YI3QLfdWqwpBrfVfvP+jZMrQ53gV8lwuRBJWz4a22x
	4j+pZmrNPFTzjvn8677s/eP6Khs2HIzKlLla7E5o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018056e128be-b5af3efb-2357-43be-892c-603470a70c08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d920339bfb886941c91f86fd083d059492de93ed4ea480084aa0f7c13e8163b
Date: Sat, 23 Apr 2022 14:43:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.23-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650725038
