Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0943F7A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 01:16:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656379012;
	h=To:Subject:From:Message-Id:Date;
	bh=fpf6fFEx34wt3jCnCKQB1x2J4Pz2HEza+vcYumnygbg=;
	b=XoqPzLpkRKQP7WdhUSs3NtHWpduhagw9+/IYf0Ak684ty5+BDINzyp225HAyYmzo
	6ICLCtplbX3Yap/wsg6wUesrujht87vgNHuBINaUe+FymQTQS2UcmsVdT96TGGGln1D
	CH0znlavkdyFlLC3PHP2oBXx9pz4VNm6+iWF13I8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656379012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fpf6fFEx34wt3jCnCKQB1x2J4Pz2HEza+vcYumnygbg=;
	b=IrEey20NvEmSZzknqXvf0cA5XNzIFsyeuukl8OWZUArm6k/aaM7Je4+5P3I/+Hqg
	LWiIVBaatWrlvce/1l+o4c7HznMNj1sA3mqL0KbO4ddIGUJ6r5lGZ8SDAoKhoCr7M/9
	aMpAotPYnz1zUD4GHiVmG130FO7i/Y46y+RbrXpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a7e1f4ce-470fdc6d-f6b9-42f7-bcc7-8b1e55d5f25c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 05e57f32e88cb10cbf17339cc59516fa5d256e2fdc82b97e26a22eb9b9ba5ed2
Date: Tue, 28 Jun 2022 01:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656379012
