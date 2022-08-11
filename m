Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8103833C6
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 15:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660230652;
	h=To:Subject:From:Message-Id:Date;
	bh=zGE+YwrkIyQCWZY/PU4mQsUSmt53ARn7prG+OunSYgk=;
	b=JtnvEM3ryUzu7MuR4zTfH9TnjiU30uf1viBxPfjWenx/hYtSy6Pb+QhM13IhHIPU
	SLGLKYWvXw2o5eIpLTFU/pfUBt/s895oHiBZo6wSn3/suotS+i5ObNJmmSV4LZcCHta
	7wxEe9HY2ZwMIkj6H3NEjGYtrMnsTps/rb3QW79I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660230652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zGE+YwrkIyQCWZY/PU4mQsUSmt53ARn7prG+OunSYgk=;
	b=evcSKJ5NbeSXj0XYNvc7Dee5xK6E2nVSC2bKbyCpkFmZXCKXxLj9fAv27pjuwtAK
	F5It3rA/qi2CHHgVe6AhX+2KZTX5X6sZ2UK3BHRnrcUMgVrQCIkzzprWYyZvZaLaGte
	fa17YozhRzh3VOUnFWVfXaT4EB2Bu62eVozK+uqQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828d7552db-088d4955-6e22-4c95-ac5c-365d3f2eaa82-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 84d692385162e3bebfb1b50f0da5001b0940f0bcf76aae2812b28299ffd3c1cd
Date: Thu, 11 Aug 2022 15:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660230652
