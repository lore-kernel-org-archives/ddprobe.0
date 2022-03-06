Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75EDB7A
	for <ddprobe@lists.linux.dev>; Sun,  6 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646535984;
	h=To:Subject:From:Message-Id:Date;
	bh=PqmR4InqDn+euIvnY0m35KBEYlWkgZND4ON0wBCv2VY=;
	b=XcQ5nMVMgjo+geHbvO8PxHp1Z4cXlx0ubMQ1Ud8HDcZ+Q7i2igdT7kx8cNX/CXMG
	nF7OSjXLGQwOFwUTbl8b+fzal0syf0m2P4AMKKHm3VfLYVv6XrPbwZ9hCo9lrTsfp72
	6HPFl+rfNzMdBULrEoH7aTFP3+IutZM7GSvoKDNQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646535984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=PqmR4InqDn+euIvnY0m35KBEYlWkgZND4ON0wBCv2VY=;
	b=gN1r7HuKaU2rykv9FxB4CL6VZ7me5YAuOW1WGT2636vy/Ch79MzgYdW/1yzdkQeh
	fCIADEBaNhrtDFgrW//SnZm6l2eyS577GlFRKc4QWt+XsSHcxX2gf3ZRGtkw20JM9a6
	bngmkLMtmywlwX+rOyE3DmwgnwsbI/ratE88u9eM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f5d31467e-fe74e958-8dc0-400c-b52d-02ecf21ba3f9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b7da03b9a652dc34354dccb87c139d10c727b4c9c35018a6ec19d56e1767247
Date: Sun, 6 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.06-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646535984
