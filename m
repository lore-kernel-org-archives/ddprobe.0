Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AC4E7E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 03:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646967684;
	h=To:Subject:From:Message-Id:Date;
	bh=eYaQlqOPRCpFw39+zEo5eeDc2EiW4/jDNWnDAnCh1uU=;
	b=Jh3qnFun+1BeBUqj40NXVMq3uj8FdQTAlhwVEaBVZLtaoF6DzuhXLFZUFJBxx/XQ
	Pi+JAaE3E2kTbDTL+YCdxcQUu+IiSh8VyKjtbbiDqEQk1DBfvzNv6Gkc3xKz2wEbTuW
	PF1O9rv7xC+csfivnSFdCd40+hfUpf0YmQM0ucZg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646967684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eYaQlqOPRCpFw39+zEo5eeDc2EiW4/jDNWnDAnCh1uU=;
	b=GQI9oZWmVpWJO2ww6Fxr9DZ2SWoU0zh3KOfKWyJM5cP/gbgfNrAXLdBRDKIE6qR0
	ee44AYGhCKYYspFyJdJK+9Mp8RgX7wvrMyj+i6yl/9I3SKhNinFTHxqsZ6xn85IaUNM
	TfEW+uZmDpLforGklOkl3LKc4iVGn+6WoZnNZGXQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f76ec7e8b-dbe3691d-8d50-4ff3-804f-906bdf740c3d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3590191645b5bfa8676997af2d5a1a6d09263a770ff6e62184b51586ca521a7f
Date: Fri, 11 Mar 2022 03:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646967684
