Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 178D97B
	for <ddprobe@lists.linux.dev>; Mon, 21 Feb 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645430485;
	h=To:Subject:From:Message-Id:Date;
	bh=OkG2vCYAuCQQW8LOMYBwluV2zIjLUIt+HBeURZIWb4I=;
	b=M+UF3jwHj8a4xqK8lQOobCVaYROOCjp6368lwQSYZJiyCrYG7Fc2lQyAUCTYtve/
	MdwIkxjrxkzhb78mhfisfxfm8LXSvUbRqB4ypWZlg2S9/ybHlB6HoQ0nYXM30NuzYUe
	6zEo7BE0GgMyREC3meazFPSCIVt+LHuFYIOZUuA4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645430485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OkG2vCYAuCQQW8LOMYBwluV2zIjLUIt+HBeURZIWb4I=;
	b=IuAOhMIrTIV8494xDNoYWsc8U1tANesFJ9GvP0c77wKxpzcYY8K0OQ4Fht0X016i
	EzEHETwZYCzndlOTjRv+oMp9x4o7l8F2bqaJdqjub4YvC2eo57MrnIf3RyAEkyjMJv/
	n2nUKBr9vPxLcyFxwRXZn48n660+DvkKlUqHaMgg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1b4caf09-db3d3577-37f6-4845-8eb6-498b784ec74d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5a861f7a738c8b309189f2b1d142c70ee9a7b26a5ae6e940787622f201170cc0
Date: Mon, 21 Feb 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645430484
