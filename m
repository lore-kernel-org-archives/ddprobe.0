Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1AF2912
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 21:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647379284;
	h=To:Subject:From:Message-Id:Date;
	bh=7BgC+lXibzgBV/9nWSSxDiGorGtX7qRYau7PXnGOhYs=;
	b=IKNAaoziCklDsi/A6Co8fDLYPFKZHXu5gkgFsMG7bh+ETpo+yVoRI55SQ7IlVlsc
	KV19Uxl8RQHo0SvbaCyCCdDOTTzIyc6hfsuwgNM7e0sUVfcd5XLzEJxVL8FLyY729Qx
	YVgQJ1kdTkfcrMpy4oehG5I581+wE4XfPGnUUcAY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647379284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7BgC+lXibzgBV/9nWSSxDiGorGtX7qRYau7PXnGOhYs=;
	b=c4hzY9Pwc5pvNGlG683ic8kHJjzvqvlg9BlNMsVb+60Qji0xhmB4vW7CN5Fu9ZhZ
	4W84t72j8gTbXTIaAnKvc/yU18MHGp0/hoCrrbY9E4FHPK4Nz5ZaadQwIDqVxg8fxMY
	qalucU3G2LRl2qhi/A3BrU8byFzgXqDfJ1Z4K1eU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f7502ed-7504ec77-6ea2-4576-82a4-5d5528d56264-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c55129168815e04ca2b75cade31054e50e051214c1b04493f0f8e5cba8ac7cc8
Date: Tue, 15 Mar 2022 21:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647379284
