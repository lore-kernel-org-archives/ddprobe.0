Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 084242F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 16:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647104185;
	h=To:Subject:From:Message-Id:Date;
	bh=/uFd7g7nKc04j9J2rNWwm7UXyPEOyXbpdN9QoPLMsSU=;
	b=bxT2Q5k01QgEq19/pKQdMYwc1BPLrcTOhCSrhlJ1oOMGzJa7HFRSzY5CPkev+qzF
	Unr1YotdYqj5saZI3Oh3F9s5CkRJyPm+2oF/wLlgfwE2atQe2tx/oshICNTbrhSKVIQ
	HZetgY/YhPlx47EMnMjX62l7Nu0QjBYgtXfXbYTg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647104185;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=/uFd7g7nKc04j9J2rNWwm7UXyPEOyXbpdN9QoPLMsSU=;
	b=CyrubnFlHnmNt48t/akuKwSmo/riuZnQZ8c6JYI/zN55ZiuB2AJANLFLHX5OGPSF
	3pv6ZkHPB3rkUcnMTh2tE+1fmEttkfDUkRdOG3I8lUz9/k+VAvNb6h5BfVWnrwnooOq
	l9mxNRlVKu/0nWzSAtVnzJOY4MmhbCH+vPwKxhsg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f0f519e-b4dfbdcd-0287-49f0-9855-f57e8690e9e4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b53ea00da2b87d4a1963f0e07dc3be87447ee8e3d5162a907b7386e43869009f
Date: Sat, 12 Mar 2022 16:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647104184
