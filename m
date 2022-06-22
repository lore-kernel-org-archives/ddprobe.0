Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F39751860
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 16:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655916719;
	h=To:Subject:From:Message-Id:Date;
	bh=0mMuyZPjUBGVyAnwxHgaiLxekkt2WZuB+TOK+uGucO4=;
	b=kcZdERxw9VgG4ix49/Gx7ziml67qDw0JhH8uUINwKSHktVWje6ve3Epgou2/AMoA
	puaXR9bk48sa2i1z0m1facDRhTFNHUSTVd9Z5ZYOH1E2Beh1nkeiBEg01iiof5rjVyg
	CFy2ARLkfC9ADYMVDFGwNwBpATDaGu2Zz+oBx+Lo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655916719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0mMuyZPjUBGVyAnwxHgaiLxekkt2WZuB+TOK+uGucO4=;
	b=c4FZwzciPswnQ3Cq1S3gk2XTSINn7V6dPIlHrNkLoOvCgoVf2mIQbvx5aPi+1ssg
	6g+MCkdILOUbUdDVoCTQPSWKEFBedXf+Po339RTEL1eyeCXCrx+JXCA1Mc3+yDr6hAP
	mNY+2shQp6eibgsp5ylAyovgdsJn6I4FbG5Jl290=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818c53eca6-d8f95a52-f80f-4386-a460-c939b687f10e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c84dd934a67cf1cfb8192a74b50230a24c4023a4b9aefcc5945f3ddf9717ca5
Date: Wed, 22 Jun 2022 16:51:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655916719
