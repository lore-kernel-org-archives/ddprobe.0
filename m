Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA0B7D
	for <ddprobe@lists.linux.dev>; Sat, 12 Feb 2022 22:10:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644703836;
	h=To:Subject:From:Message-Id:Date;
	bh=6JFsb1cQvMRwzJcAGxr+WgENhQ7SWwmvPfh7osKmQ8c=;
	b=cu0Rd5eHm6p7oS6OTbw221kah1n5U1dJ3z5N5ZeiCCNRJdHO0bDhu9VICP3gJpbV
	6xQFF+XWsafbUuv2nIk/1DSEtn4gYsiXDxKoofSkDJgnLwCbAfSpd84B28loLmZlBSf
	7he2ywf6VgCZPeUtU2W6S0so/Z84bssCUW04Mt9Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644703836;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6JFsb1cQvMRwzJcAGxr+WgENhQ7SWwmvPfh7osKmQ8c=;
	b=UTcT2jI5XHxWwgOWz5b9slfflWFcFq0xpFCQrsrHgvyU+P/OCn4yu7objKramWhM
	YWIh1lpxcLngMtRt7qjgqTdGix1dGALi3cZsH+iE9eGg1lAl7TB5K3GQkaKv/XAr5F2
	jLiFLNfe/HPpA60I4prtqboazVOZnplgByRtpQq0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017eeffce7f9-6a4ec47f-d644-41e9-88cd-c4d6118a8fb2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14d47e1d00b0997dafefd34a8094ef92d0f72d12f3b24ffa4f0d0ec78dface11
Date: Sat, 12 Feb 2022 22:10:36 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.12-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644703835
