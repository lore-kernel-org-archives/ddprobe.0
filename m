Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4C8F7A
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645842085;
	h=To:Subject:From:Message-Id:Date;
	bh=eWY1yKxlaukFVm5tQPzn9fG/MWkiyAN7CJsacLFQH4s=;
	b=ET4SvpSN86XMi6WXQA0arstbZKsLMIOSnyMXsyvaxVNlBE/5O80NsoOQThfTdjXC
	TmOaVakTYMVmOeeloKzIJ3Q1UGvv8RhiKN9ZN5JzAowoDZaTSY7CnaGHlnIChBEl6gN
	/PagongZnWNiK9OFCmDDF1cjRaNSE9NjlWVa5BK8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645842085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eWY1yKxlaukFVm5tQPzn9fG/MWkiyAN7CJsacLFQH4s=;
	b=NMjnxNMRfJ8lkkWu6UWXbJWaxZ/4XHKujUSByGReU4GlcIQxJFyAG+9ttZQZvLPt
	35g31NCB3SgKD3fbb2ouoCL7+fwJ48lJJSg4zQpVtA+GX94Y+VuLH6nd97geVq6JqXp
	Un6iqTAreqxIocT3iOg+cjr1ykUstRAtEzpsnWOg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f33d533eb-7e70fee8-b943-4f0f-8d3e-3b95ae3dd79c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2ab6f7752c16f7a4d0e7e024517a38688b283008c5b444fa91674534867dcd69
Date: Sat, 26 Feb 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645842084
