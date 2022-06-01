Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08BB3362
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 07:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654070279;
	h=To:Subject:From:Message-Id:Date;
	bh=Btu7SxVEt58kJEUzRqPGGTIXBxHHSdZ9GQ7gY+eZOl8=;
	b=O1lTreGLlGw5NJ7YocbsyuOUjxOi8xfKpKnnnBg1R/a0wP6uQbhp6kI+vf0F4xhX
	M7UFKNL3dvX6mldmEZLk/oeUDdXIxlcAFVVVTsqB4o0vqm5gd/HHARoAQL5RBT3qk5F
	SrTiXa0FEtdsSkllcBSoBWXfok5Tt8qDhB4e+vCQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654070279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Btu7SxVEt58kJEUzRqPGGTIXBxHHSdZ9GQ7gY+eZOl8=;
	b=g+FBknum3nRy5UNjYgImLxAPlFngUVrw//DbamUJ1AApCu940UuypG174cAslTR+
	3u2nI+hcZ0zECg13y/XO8Dxk6IhwNJaaF6bsixRQUw7qf+/KNdb/6hXVmHp6PaS6lbs
	tH4ZBCMdtVGtNtio5I8CXJIcU4OAhGbFlMg3MkJw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101811e457c66-482cbca3-db99-4907-a5e3-7e646f8f2d64-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f77ce7d7bec8fe0b2093036860ea065c697ed9cfdc527af69777ee8b8c604c92
Date: Wed, 1 Jun 2022 07:57:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654070279
