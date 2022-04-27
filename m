Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0304F621
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 01:06:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651021618;
	h=To:Subject:From:Message-Id:Date;
	bh=jb3muDSTD3ih1IB8iO+vX7fP5L5CgbvzxL52oMQz1Yc=;
	b=VDhQ5BEsnuwCTe0CA52mhBfX2H2aB0WKkk5YB2/0C4uJLYZ7EGD6ethhXELXCqL5
	aHWoWV/0/GVyinUtij9PWUO1Ls8AY9v/P7+1XkQIwcj6GN1E8C5JkD+BxlzNdQIn/5Q
	xISPLhSgMffBxYrJolnmzcgoKjHqShFaX11WVJDY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651021618;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jb3muDSTD3ih1IB8iO+vX7fP5L5CgbvzxL52oMQz1Yc=;
	b=O/7+DVEltXBVf6JDQKFOooJFjgOlYZ26Xc4hDGVEZN+cUoYVWlIKBWygwGIy6WH8
	d1Nvt7+qN7iN+vjAJQg8r/v87lyNPKSCRNpUg9NvNB/AeeGW+L8RJcP6jy4LZI2+ulT
	N/wC1z3sw7YZ4KaUxVZXR2tUwBIyuOvOqRWuMxxc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180688e9c8e-e985f10b-e389-466a-8f16-4d1bc120046c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f508dd799b60b73fecd715dfa60b844afa5a567c8eca53c2b743e9c8ef60704f
Date: Wed, 27 Apr 2022 01:06:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651021618
