Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B371B4AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 18:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646762785;
	h=To:Subject:From:Message-Id:Date;
	bh=SZHsPiIKuevQ03SCNdiHA73TXxUUODq2dmm3fKvtmDg=;
	b=YLhqMk0vxoeKZum9lgafN9/KtIJtASpN+H+ypgguJcvk7LlyvW3IWkKbafSQUvQO
	BWpYXsrhvDQOteXfssyfkf/qody6JocSpJI+jkxXnP3rDbHj3RNP2UHWxME0UjbyCsg
	vcrwr3Dsua2V9pZTQjI3lYfdxrIWoo2706UTBizs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646762785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SZHsPiIKuevQ03SCNdiHA73TXxUUODq2dmm3fKvtmDg=;
	b=l92An8uiwpyMPDIgZU3XH4YlMaREa9xhkewSKRDwjPLR5AeNZr6L6PZ/sToMAqvL
	TSjou5UxW+5bYTeAWnR9he5ddeVRC63XACMLZKkQJmUsowSzWZoI4T6QssM5iGE/zQi
	Mutvg9hqczSAviow9dSjmYJGFmkG5bC6o3UGJYfU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6ab5f7fb-ee2bbb55-c089-4bea-aaf7-56e02f1ebe72-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 08b0e735ef9eee9b8531e2e3a48c1530e59cd356aa6c5cc737d421fe51125700
Date: Tue, 8 Mar 2022 18:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646762784
