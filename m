Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 060CF3216
	for <ddprobe@lists.linux.dev>; Wed,  6 Apr 2022 18:36:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649270218;
	h=To:Subject:From:Message-Id:Date;
	bh=adok1Yo2dOZlznBi+qc1z9RFsk6VW7dQzmUBV8MSUHs=;
	b=DKIomkm6qnNUDMHgu2OodZGCOqtUb1OWHzmHtV9p+8OUwvFeSImBnUNLoYpc7m28
	HWVbUeW5Jv4IVno6SBM5aslVrqcgdcP6fnppVwAKE08Ec+hmPb6OmwDlZmC6uhecRku
	o1gagvGBk0+tAE7Bt/Wcmd/pUOZRzvYI5lLgp2GU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649270218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=adok1Yo2dOZlznBi+qc1z9RFsk6VW7dQzmUBV8MSUHs=;
	b=VF1ul6NjGolnGifi9M0rCPoqEUYcMj7pFx+IO+L7YymIXopaxmE6lxRg5rilwh1C
	GvLW1QSeVbONnrTIDGav2otx8/6lmN8phZxrbkA8VxRcbOV/hEUvXbbK1zBrdIx0rkx
	aYQs8YmOlmhPpFGGLJnX+0XzSvS48zC4y6EHXgh0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180002a5deb-6e51847d-1ad7-4354-adba-37f72bb0a897-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 64e1972d9df3e337a529b3f9d992a332083364a2c1a24c42ae7b5428c1fd68ad
Date: Wed, 6 Apr 2022 18:36:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.06-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649270218
