Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 208BC4A2C
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 17:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658510212;
	h=To:Subject:From:Message-Id:Date;
	bh=60MndW0rpxAQ+RPR+PqkYAL4brkbk1TQEj8UQJoOnR8=;
	b=DeTkMf5qu2rWE5G0mRS2lHXbvl3vQuRifHrC+QfgbToIKnq5VXB8wMMqlSDm7GWg
	D415+n30MKRUDicEvQh8usAaCLt5jZSl21NWIQcaQWRSW3x4SjTxwpbVheHdsK7vPxz
	jUQnl2xOndQNRPx/aVZvJxl0RRhGOLVc8owNxtas=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658510212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=60MndW0rpxAQ+RPR+PqkYAL4brkbk1TQEj8UQJoOnR8=;
	b=dFBfrML/ahcjafmgegIqgd4tkCQxLeRYUqV/CZA+bWMdTQCFGWrUymdiMTKy9NSG
	dWg476m66TfCZZaL7zD4kCVcW8RPD6yBSidBvPEU+aOFtpkseFDu1szER8IfDyxSRzp
	0ZVd/1ztCt4yF6WqU2ynIBsza48je+OyIMge7haY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018226e97cc3-9eaca126-aceb-423e-8ca0-ce0e36283cd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1fe640bba16fcc470c843740f9700784892b8b6fbaeceae2a223a4b6c979951a
Date: Fri, 22 Jul 2022 17:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658510212
