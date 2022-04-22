Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08CD57A
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 12:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650630958;
	h=To:Subject:From:Message-Id:Date;
	bh=WkBfJ7erG2fAhTELmu+vPkgrSmevYj1U15UUcELRUGQ=;
	b=lPCQrGbeX3jFBzpcdcIICETFrl2ujF0LREuu7GkKFW0gO/hm+jl0BVUXBbZ704Up
	Eig5Y7kBdiFK7G3dccmfWatTG+P6BW/FPq55rDM6nDaYmvH+KLIV8uEXpzoUYpaywOJ
	r9dN9pQi6JzpZ769m4WNKdbVfPOgktT2Zv0UvL60=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650630958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WkBfJ7erG2fAhTELmu+vPkgrSmevYj1U15UUcELRUGQ=;
	b=JxAS8RTxMWRcgzVe0PviZ8hbW+McX7dcBNjZrq3NoEmisJHBVVv+KLru5ux0zMRb
	VdbQaoZUz9OQUaLgFP3vhBwteaSrRktzoEtckdeYMAMt/B+MOt3RgRwI9ffOUNLhg1p
	l+9jdMuueeVV/erdIOt5B9ISjYVWjBoG+oPzeYHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018051459cd0-5cba58d1-3e4d-42e4-a350-799903a405a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3dddb72935926acac68cf1f9d6dc57f8b4e54d1700fb9fad77ccf732dfd9584d
Date: Fri, 22 Apr 2022 12:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650630958
