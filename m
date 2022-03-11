Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745F87E
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 10:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646995884;
	h=To:Subject:From:Message-Id:Date;
	bh=EZW+2pLt8k1suHTTd2AiAN023RaQI0buKOy0eJsTWKI=;
	b=Si75bLqOnRAMt4kJfGkUxmYm9YcdpKmD1jk/+oO2iMXLWj0o+LHAL17t5BWBjPjA
	b9l/mo8x03XHbcELFnGntsg9NQVvQZphJIe6avYz6ud4hNIwbuXfc22uET4GoHXLYGk
	jdWpFbprtU9aZqRreX+v1ThX4jb9b7/T++6fLdgk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646995884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EZW+2pLt8k1suHTTd2AiAN023RaQI0buKOy0eJsTWKI=;
	b=Fcnek6zku4EZt913qMLbCYF5EKNxDrs/f2UEsVfNo0n+ap0dNfn7YqFPulSvLDaZ
	ksbhuWVQJ/xjP9bFVDHc/jcXDV/0d3jvkB6B4Q+MbHUmgelKUPOZZpUYKYhWIKYbcS4
	KsD37/QNkcCkmM1AQ4/+fNwA5o+Un5BdpwExMKNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f789acad7-4936fac6-2eb2-42a7-93f3-e9221faa16cd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3ccdfe82972d1fd00b928501322f70d1c5883f95f4351af5be59033d14ad5b55
Date: Fri, 11 Mar 2022 10:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646995884
