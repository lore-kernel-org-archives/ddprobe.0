Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536485CA7
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660920052;
	h=To:Subject:From:Message-Id:Date;
	bh=ABdV3SF6/jZxlF5ci91JBCcLLPQIZCjNtvVisoDa5to=;
	b=X1Z+GMQkcRl/CkbX/5JqhvZKMaxGfOdO2i6IhZTjbvEGIY4YCIMDEZz7aRNxIo2V
	iaRogzvcgfEPYYWipB5R4pKltAbEBUd6y4elEz8Dh45WzVZb7CU3OsLQ6F2CKYtEcLI
	5dQoyxZ1CXDrFFyWMo0hixwlWJnYjPJD49w6nPNc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660920052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ABdV3SF6/jZxlF5ci91JBCcLLPQIZCjNtvVisoDa5to=;
	b=d9HMxzVur998yydpxeiMUOJDF/VSDXz24P2Z/qcXPGMtBb5GJfS8NCoUMlMl4hay
	DAVPCMZZJbE4D8H6KaBfzdWO0Qt59x/P5bG+hFFM+D+cczwTHr6YZyGp0a4b2Xemfdg
	NvXWnwq3VCbWehIKmxV15rEWHQD8QRQua2fdYrRE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b68cbb3d-2ea0cb11-d7ca-4c15-8579-4bc83aac09de-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25be262efda68a5b77bd35357784d5ba61bfb56087e384d63337c891a7bde489
Date: Fri, 19 Aug 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660920052
