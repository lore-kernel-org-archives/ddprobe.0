Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A96B87E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 02:24:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650939899;
	h=To:Subject:From:Message-Id:Date;
	bh=/xj7clqIUG5Q8m5YNuKPnDoBKs816Pv/EZWCz4/KiPQ=;
	b=ZCESC5mZ3htOIYJ2fT/kMwt+dcRi9ujgFPa8Lf6KyXpoQqentSM5rd44O0Q0RSoG
	740UAnhgEq7mdtxHg75AU910Go1tjif0UE73YEYVwd4+7+jAEc/HQaFuWatO8Q3PJAk
	Dlqc6f+1nf5QLN1Tb8WHxtWTwhnV3xh58AdwV8NQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650939899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/xj7clqIUG5Q8m5YNuKPnDoBKs816Pv/EZWCz4/KiPQ=;
	b=TD8JG3BoO1mjJj+XcK2Ug99tE7WMDk2yA8ixtJy6gu9uG8jCUSuJ8R+ZnR37SqeT
	XMOntGg0BjMvLe4TGjzKl1m+Yrz0X5yM4I/yRA7XxF3AvzY21rGtZCvSG2+tI32mbA9
	Bmd8kMdrUbXGcnLtJK7kmkCn9lUEqFDUpIt0Q20o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018063afa9b4-38c7d668-0718-4e25-b097-27870c0d5546-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 961aa717f4df7bd73a821b3207d56512dd2be6120770dd735d702b1f0e8f70d4
Date: Tue, 26 Apr 2022 02:24:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650939898
