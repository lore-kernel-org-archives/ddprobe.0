Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D3ED3C13
	for <ddprobe@lists.linux.dev>; Fri, 19 Aug 2022 15:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660923652;
	h=To:Subject:From:Message-Id:Date;
	bh=VTNGT0yS/NAhzCOrDy5AEuaCMtf1VlqanKhoRo0MWsY=;
	b=FIqCU5VyoQDPlbRfkFo+lKkEsE9IRxIkWKffOzciuhG1FyrwrAnafk5Z7WmJ2NmA
	sNdlDQEgMPmy94+1hbJh8nN5trVqmB9z7W2n3ABJw3NwhO7AS08nMm2t/N2GAZDQvhY
	0lWTi7WLDECeOvrgYK8jU9IuOp3JSYdpjf6tzFjM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660923652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VTNGT0yS/NAhzCOrDy5AEuaCMtf1VlqanKhoRo0MWsY=;
	b=dzvBFVPseG0qRzJ2Q6jJOEDGPf3E7U4iY9bhCP9hfqJetU0fVTYpROxRPhoyiPyT
	2NNy49XVq2W/FDTCC1kBAe6yEPSq+Jej4tI2IAI5MQTZaiWj8+wTWxMDmI8qhHJBQG/
	32YJfxm+3bSB//53k21+WXu/j/ngqlg/Ved0eCC8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182b6c3a9c9-5b75102b-6edf-4f0c-a087-f54e8ecee34a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78ba706cb915bf21237d9602956e692a74672c0b8a3da021a11a2f4b651f396b
Date: Fri, 19 Aug 2022 15:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660923652
