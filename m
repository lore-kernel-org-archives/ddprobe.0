Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E39B2916
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 21:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645822884;
	h=To:Subject:From:Message-Id:Date;
	bh=Iwnwdh3k8DdsBDXB1+3/9WZb1UMGrdsrNCqEFp/ZzAw=;
	b=WFnfUtocgZnBrC+uqcqg7KhH8AxsdNiNY8CXURxXiu6MttLilV27Mhg86FRR24u1
	HJqBdvpgsEhURxLRfQuel8jC7AYSeT9Iec+MXJf8Md1FRKd86PEsOBAXrg9yN4r3HmS
	J7RAopNXUS/2SSobcyvnmx3xAUIgCO5FPQRXihww=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645822884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Iwnwdh3k8DdsBDXB1+3/9WZb1UMGrdsrNCqEFp/ZzAw=;
	b=AZTs/TeWOw9Nk7L9qyz/3kiWEZQLI85LWp+j5I6uFvVFEE74doMWVOdLkNsL7Z/o
	KfPCzpuxfjUgaP4la86DkuLr99oVovZUL2UZdnvmfxxs57s1DxVYUy3QwqqSW1FdkZk
	Ly1Ux5DW+VlVGaCZZotG5fr3+zz79lf6VaNNAbE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f32b03ba0-9e097a94-6eaa-4d58-a2a2-959372e0ab71-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed4f9d33152b4f61a9dcc027803d9b81c6f01630632e6ccac7bf21659748e9aa
Date: Fri, 25 Feb 2022 21:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645822884
