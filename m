Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFC147B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jun 2022 05:52:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655617979;
	h=To:Subject:From:Message-Id:Date;
	bh=CH4iIQ9XQLObFNIcFk6oyu/K8LZmEafNjtluiSQ5r5w=;
	b=j6uL32zV4n5tQanR/HDYdSsCfmHA/2kDQ0CYqKaPr4p8HjIVPF91Mqb4qQgK62KY
	DNgpkF1IXZcsJRDtE6ivtJ8rfVK+3B/kdavmcsfAgIwhvEFgrC4iP3OdpEa8tXoyGYK
	T9XfO7XTB4WgtYCt7/9qHN0e+T/V2kGoZURpMtjo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655617979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CH4iIQ9XQLObFNIcFk6oyu/K8LZmEafNjtluiSQ5r5w=;
	b=GwS9CXHR8tGmSirBmriU96c0PR0g27siaaoHJrjLpZXOcA2S38/SU4BBsiqEKHb+
	02hF8754sx02q8JGC4U0Ze/tSJro4VIUFbGkX4uWr7TI8BmSleiWdIkKVEHPwYtrqZZ
	6OHMPiBnq23xVIvHuF3Fay5bnDXcoO5nM9iI6VNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817a85837c-ee52c2f6-d16f-4bf7-8225-d48fe18b59c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 177c18a4dd26b6aa37270da26535ed8a5a26288afac50845473a4c31ea646ca8
Date: Sun, 19 Jun 2022 05:52:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655617979
