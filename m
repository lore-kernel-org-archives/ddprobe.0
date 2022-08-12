Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519914A03
	for <ddprobe@lists.linux.dev>; Fri, 12 Aug 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660333852;
	h=To:Subject:From:Message-Id:Date;
	bh=0oEc6BSOcipHGbPnIcxbRLCWGJ1TQX+gzCna+arSvm0=;
	b=HaddWItvZL4QPLXSbSp3VUcTar07wgoYLeTlQfJraAAdbydnqJTYwY1SvQcAPPHq
	z9NnwCoKbSBrpBgnm+yuKlTsf1n2f/DF7G29srX50fJWKPBx9033DvX/cIqmFiPXeo/
	zd/Q/TvTgl1aQ61/wkeJWNF4uM6JAxCNTgOQwWlQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660333852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0oEc6BSOcipHGbPnIcxbRLCWGJ1TQX+gzCna+arSvm0=;
	b=goYBBN1Z6Zebo7x/W1sCE89IxDWQup/6aIgfIuybvB7cectffwycGyj85XUiABdm
	13kXNauTqLobZRCV644Ng7rwTeB9AaNL7R7R/rpMwrezlhnbpVnNWoQSi9NSUIeiNH5
	zGNd07bohSiVbSpW+OBJSTUeZBvNobfd6wbFaj5E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182939c07d9-c00e2405-594d-4cc1-acdf-76d0413db57b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2330bb1ee02da79888c517f0f7c2c426bd8bbcd45143da0ba1a4a06e007875dd
Date: Fri, 12 Aug 2022 19:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.12-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660333852
