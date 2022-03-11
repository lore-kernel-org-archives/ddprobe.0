Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E6D97E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 09:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646989884;
	h=To:Subject:From:Message-Id:Date;
	bh=e/ff1sQksNK0+F4uCmP4FkN+bhddMgGH5jq81ZH+dOY=;
	b=hW207r54/20HJRtCj9Y4XEsPmNrcQauIPQMqCOJ0hwGTFt/3OyJfqVmYNzJN39/K
	XtHF1fplzmJeguQV3gBxNhvlURVjHT3VQmHDcANQWfh2QIFTz3qBJ8wnVtdKV6rgQ13
	S+ou1XAA80D9Q0LLBv6jSWGI7X/BjzE6MFgSY0UE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646989884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=e/ff1sQksNK0+F4uCmP4FkN+bhddMgGH5jq81ZH+dOY=;
	b=GFeVgHS4WW7uHxryhJw+VINnKFCsRcwmuC0sfjt2yHN1vskcfjNRF1+ZXqoAcfpD
	m7YamOou/PHlMYzNpMDPps3vxMrsADZpKXkiBI3ao69SqmbLohZdAgxAo6FOHlSsGcm
	v2oiD6IyZZxIhRnWeF4WPEOkfAZHjT0JwB1TpDK4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f783f3d44-34c51a61-038d-45cc-b9bc-c309d146b42a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 39722434e3972455c9e2e78e4e2c60716ee5c39ea781a0fc0d69425fe9ddc07c
Date: Fri, 11 Mar 2022 09:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646989884
