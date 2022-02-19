Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E2F4F3B
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 01:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645233984;
	h=To:Subject:From:Message-Id:Date;
	bh=v8Npu166r5Baf7j2u8sHNVF50bzNH0vM9IQlMktZeIY=;
	b=X+yI1GyAJGUyEFB3z3uTdQld7zZUKk5uRgyw7QYH4tJujm2qqGsWEMcspok8Ybhq
	nBkX2TEhnjJdyqNIRJhm9l+rFl6CdYeIU/ng63L7Fvuqs9KmCmglZpkEe8Ba14P11ru
	/rHn59Jn0bVaspXUWx6JpBck28T3eO75CSrHR2TM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645233984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=v8Npu166r5Baf7j2u8sHNVF50bzNH0vM9IQlMktZeIY=;
	b=LvMZa/OqTZGmHxxjwBFKbzKWviNsyacKYaR02C/od5Q9BSRWMOhF8RejxUlH86cW
	eVogmlGYMOXSQRw1vRk+Zp6P+ouiKRVfqBnVefBe2F+V+RyBsvvPST4vyG+u7C0qgAR
	ln3xWXR5LwEdA2W6nK8J1yteEi2GR8qV2qRYZYTQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0f96550a-e229bed3-2183-43b8-9869-d39d575db370-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a84330078dc7fe038fc82847845c933d045e3c4ae7c2f36cc245bed18c58d3fa
Date: Sat, 19 Feb 2022 01:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645233984
