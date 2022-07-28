Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D0CCEA0
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658967652;
	h=To:Subject:From:Message-Id:Date;
	bh=LQHxr7qV1snS/1443HrrYPV8UzEf0wYBPvSj+yuaMBU=;
	b=DGbODofqUyqp69SQmKsmo1YV4cQrqf7ymhN7vI+AtePztWp9Qp9IP0k24tRAb9Tf
	ti/kXR085W8F3CtxsXeaIZa8zxQIqg1i4ZeydzXITqDVW/HDxYe4AyS8Ph2aJ7y9lQm
	TQ7cRFlL/7chIKpV0GRNxQMgZH+RofOytkizldUA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658967652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LQHxr7qV1snS/1443HrrYPV8UzEf0wYBPvSj+yuaMBU=;
	b=UR+XwPBzmUEKusQFK2qHlOLsKcJBSIpyOwwYbRoRTzkZjlAtkXcv5uA19/Bp9CLW
	nh222ayLHTIgOlWIcKs7Ks+62jevCmQ5jJ3F1tQOVgkPvlJX5y3/+cJN/qzyS+HYyyb
	2k2CPQCHycveBysm0HUaL+jY2HvkGRJf4VXD3cKo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182422d78da-87cbfbbe-f915-4c6d-b230-d94e0c7332ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 739602483e8c5a5d56eeb986332a692d135571f4718e7c31638d7f62bab19b3d
Date: Thu, 28 Jul 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658967652
