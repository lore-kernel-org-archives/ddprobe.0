Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4761C370
	for <ddprobe@lists.linux.dev>; Sun, 21 Aug 2022 09:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661074252;
	h=To:Subject:From:Message-Id:Date;
	bh=9+KTa8HcxZexGy6MsoBb3KNQpDe0vEyfDxAjJVRHY7k=;
	b=easa6oMrbTzQ5CIGhKMY72zcAXMzXok4uVyjziujyOREbTJO/xD7BFvIJoRbtfMX
	9T54ngWRs3L9yHYpEpEcVL3WUXOWLD4gRR+wPiGYtM3Y3OLLzqawIyG0YEo4Rn2SCDa
	GCIsbdW3z2y4gzINSB4mOf1/2jxMSgEtyE/YWxL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661074252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9+KTa8HcxZexGy6MsoBb3KNQpDe0vEyfDxAjJVRHY7k=;
	b=SQAMVTC0GGPSPlL8Q12m9BmUUAznYn8VZGelkJkkSHJAn5tx6O3KjJHuE9eN4RKA
	VTC76gwpidA0OG9aX96xPAm0ob6YhRLCFzrUxmqu/Xp8ATaUabueYqcEnIkBlhWB2CK
	rwpZ3LKKFYH71IyqKWpnjkjbigr9iAcXpuHX7/+w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182bfbda31b-8d1bfcce-312f-459d-a1c1-760588168eab-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e6f188b5d1990da5b60b607af94432ae24ed53d60fb2d690a31639f5e5bdeff
Date: Sun, 21 Aug 2022 09:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661074252
