Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E247F7A
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 04:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650168778;
	h=To:Subject:From:Message-Id:Date;
	bh=NRvMpKJJTqew5GTkfn9g1MnSZupNKyQdxOFo+o0vgzE=;
	b=Bulxvkn2mff39SsQnWoKE5b9/bxSjfA8CPe7TL6E7RRZPSFvD+8+1KjmsXRK31Ey
	AL3zqB1gixUTGvpkRx4mJH9EblyxVNwBhgjhwxtdGjeRxb8/lz3MtLxYKKPjN+6ySfQ
	ou3NnLPEoXRb0yx34cA3319lMF4SXscqhrWpo4d4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650168778;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NRvMpKJJTqew5GTkfn9g1MnSZupNKyQdxOFo+o0vgzE=;
	b=Mn2ksPKPdTwytpltPCN9dlBj/S6jjKHtSc4oQp0L3FUA+nLIq7qV9XOTp2AYSDxt
	FiA298EDQyBh5sVzAB02yCA6LitD5ICcvl72Y04jVQBTaIgQnDiwlDH+0ba/i4goGfi
	vBJ/bkYF2grhEG3xr4YcbG6Bs3+Fbu2/iiQ7xiQs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018035b94e14-ceefce69-15a0-4fcd-ae80-550123a95b77-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c1a18ec67209bf9d4066d53087e1635e69a5847709aff2e1b7c10390ee6ae782
Date: Sun, 17 Apr 2022 04:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650168778
