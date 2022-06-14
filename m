Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08896184A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 07:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655190479;
	h=To:Subject:From:Message-Id:Date;
	bh=uNpWH7uy/r2ZQMtUW9RPgxSRJ3RdGqrNc0mEi+pQfvY=;
	b=NaAqwzC+aPu62+9Ly5AvxzWgvvUV0Q2HaKU3qx33qIaZt9ZC2O8mJsgKMSpRBFkg
	3Bepqc9k7taN01v6abTsHYIikRbY28IV3Z4OT/zccQEZNnYjLjdpxezC6OgeajZCd92
	tOAY//M3E5/u5Ew3j0aTzlsYaVTc2w2q42owHwvg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655190479;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=uNpWH7uy/r2ZQMtUW9RPgxSRJ3RdGqrNc0mEi+pQfvY=;
	b=NhF4WJdSq1mH1mxK4KPperTYRePw2KyQwxFRmt6JjwX6cTovO+KZpvIXIkc757Ly
	mE/qx1sGhiRrodpI04j67efahhwd2xvBvnaYz4uEI+Og6P7DivKRXcHKXMTxcwyjHBw
	MljzHFYm2n34XK6woD0D+vderiFzeakbB528dkKU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181610a6197-d926ba6d-52a3-413d-9425-0b1e263988a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a5a270f09c3acce8ba05c8d9564d7982f257578c5df45c3363944084e42b61b8
Date: Tue, 14 Jun 2022 07:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655190478
