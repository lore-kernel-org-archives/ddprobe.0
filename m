Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E455386
	for <ddprobe@lists.linux.dev>; Mon, 15 Aug 2022 21:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660597252;
	h=To:Subject:From:Message-Id:Date;
	bh=XQIlvnc8rdxPRQ3GVcngfzpoVFJ8iBV0jJracxYS3Ac=;
	b=F6DH45fJqOHwsudYPMEdDb9h8uh8ncjLHHvPIo1sm+dxhf0qnbTIuRaxstUh+hb8
	u0jg++gos9BQnbLsOxv5WuWee/s2rW0S+buVIJ3Uwkrl9cphkfZp3sE25JwehB+vGgu
	uy17QoPv0nkmjGbKfAfwp2Ldh0D8TnHHc+iBs3y4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660597252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=XQIlvnc8rdxPRQ3GVcngfzpoVFJ8iBV0jJracxYS3Ac=;
	b=IK0RfXA9GtpZNXbJhhHCUNeXzK0UQZ9doMWQGtOGm9GNxOlLUQfXDzMdPmXVi7IO
	lWA3QK2c/G1iIqEqLrBi72Mh5jDrpbTiJaUtiCCyH4ksQOyMHoq2X4KeFvrlpv7lYpX
	1AYNWRqPrgERDCUV0hPN7MlKykxtuEuBjsl81NLs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182a34f31d2-8b6140d9-f696-4d65-966e-3375b568a6de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 75995c5a79b07f47bb0c468023dba5b631340c5546aa8c4255e1b00fd0b10dbf
Date: Mon, 15 Aug 2022 21:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.15-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660597252
