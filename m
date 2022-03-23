Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D2441378
	for <ddprobe@lists.linux.dev>; Wed, 23 Mar 2022 07:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648018885;
	h=To:Subject:From:Message-Id:Date;
	bh=LFgZr/G/wJD5gong+YlrBtNV/jSWnh/Z1H2bHnF0yGA=;
	b=XVtGMi2mTUL06ThhXaWsIubYy23etgdLHxNYqofqydNr74W4g6Vbad6v7Ihn9g/N
	E1iP2fTatvn5aB3dHRsoRJD5U/6+Itx9MzaRBc7ylC7i83VREPUBxXvtxad2QqXlP55
	MnWWraE/hN+IGGZbxTVf1eWlxJWV9xZWmR/OjfFY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648018884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LFgZr/G/wJD5gong+YlrBtNV/jSWnh/Z1H2bHnF0yGA=;
	b=i+MoUrHEhlSCLNKsJIbdxO4lWksUB57dtTjv3067Mw8AKmRS2R5Gyz/kv7c/X8JH
	5975kCSCHzAlDyn6cA3e6gGe/143HsWd6iGqjrxzYP25bIv+drC2TdDtMAQdEVcHVKg
	kQGppUVf0z1UK5vAo4+H58czHlvkGkJVXtBZ9PX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb59488dc-61725751-d9f1-4720-b525-ad539d09c674-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4df350ce8eb7076c2a3e2284d74aae52d3fa126e4e4ccbfa220fa21d6ef201d2
Date: Wed, 23 Mar 2022 07:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648018884
